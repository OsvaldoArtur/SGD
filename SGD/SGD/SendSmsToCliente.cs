using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO.Ports;
using System.Threading;
using SGD.Models;
namespace SGD
{
    public class SendSmsToCliente
    {
        sgdbEntities si = new sgdbEntities();
       // Sms_tb Message;
        // C#
        AutoResetEvent receiveNow;
        public void salvarMensagem(string numeoro, string messagem, string estado) {
            try
            {

                string a = Guid.NewGuid().ToString();
                Sms_tb sm = new Sms_tb();
                sm.DataEnvio = DateTime.Now;
                sm.Estado = estado;
                sm.Mensagem = messagem;
                sm.NumeroTelefone = numeoro;
                sm.GuidMap = a;
                si.Sms_tb.Add(sm);
                si.SaveChanges();

            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool EnviaSms(string numero, string mensagem)
        {
            using (SerialPort serialPort = new SerialPort())
            {
                bool mensagemEnviada = false;

                try
                {
                    receiveNow = new AutoResetEvent(false);
                    var PortNameCOM = si.COMConfig_tb.FirstOrDefault();
                    serialPort.PortName = PortNameCOM.COMConfig;
                    serialPort.Handshake = Handshake.RequestToSend;
                    serialPort.DtrEnable = true;
                    serialPort.RtsEnable = true;
                    serialPort.NewLine = Environment.NewLine;
                    serialPort.DataReceived += new SerialDataReceivedEventHandler(port_DataReceived);
                    serialPort.Open();
                    string recievedData = ExecCommand(serialPort, "AT", 300, "Telefone não conectado");
                    recievedData = ExecCommand(serialPort, "AT+CMGF=1", 300, "Falha no formato da mensagem");
                    String command = "AT+CMGS=\"" + numero + "\"";
                    recievedData = ExecCommand(serialPort, command, 300, "Falha no número");
                    command = mensagem + char.ConvertFromUtf32(26) + "\r";
                    recievedData = ExecCommand(serialPort, command, 3000, "Falha ao enviar mensagem");
                    serialPort.Close();
                    if (recievedData.EndsWith("\r\nOK\r\n"))
                    {
                        mensagemEnviada = true;
                        salvarMensagem(numero, mensagem, "True");
                    }
                    else if (recievedData.Contains("ERROR"))
                    {
                        mensagemEnviada = false;
                        salvarMensagem(numero, mensagem, "false");
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                return mensagemEnviada;
            }
        }

        private string ExecCommand(SerialPort port, string command, int responseTimeout, string errorMessage)
        {
            try
            {

                port.DiscardOutBuffer();
                port.DiscardInBuffer();
                receiveNow.Reset();
                port.Write(command + "\r");

                string input = ReadResponse(port, responseTimeout);
                if ((input.Length == 0) || ((!input.EndsWith("\r\n> ")) && (!input.EndsWith("\r\nOK\r\n"))))
                    throw new ApplicationException("No success message was received.");
                return input;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string ReadResponse(SerialPort port, int timeout)
        {
            string buffer = string.Empty;
            try
            {
                do
                {
                    if (receiveNow.WaitOne(timeout, false))
                    {
                        string t = port.ReadExisting();
                        buffer += t;
                    }
                    else
                    {
                        if (buffer.Length > 0)
                            throw new ApplicationException("Response received is incomplete.");
                        else
                            throw new ApplicationException("No data received from phone.");
                    }
                }
                while (!buffer.EndsWith("\r\nOK\r\n") && !buffer.EndsWith("\r\n> ") && !buffer.EndsWith("\r\nERROR\r\n"));
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return buffer;
        }

        public void port_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            try
            {
                if (e.EventType == SerialData.Chars)
                {
                    receiveNow.Set();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
