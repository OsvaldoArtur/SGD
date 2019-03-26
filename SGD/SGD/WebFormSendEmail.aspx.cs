using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGD
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("apgesdevelopers@gmail.com");
            mail.To.Add(new MailAddress("osvaldoucm@gmail.com"));
            mail.Bcc.Add(new MailAddress("osvaldoarturdionisio@gmail.com"));
            mail.Subject = "Testing E-mail By ASP.NET";
            mail.Body = "This is only for Demo ";

            //if (FileUpload1.HasFile)
            //{
            //    Attachment attach = new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.PostedFile.FileName);

            //    mail.Attachments.Add(attach);
            //}


            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.gmail.com";
            //smtp.Port = 587;
            //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

            //System.Net.NetworkCredential credential = new System.Net.NetworkCredential();

            //credential.UserName = "apgesdevelopers@gmail.com";
            //credential.Password = "admin@#199710";

            //smtp.Credentials = credential;
            //smtp.EnableSsl = true;
            //smtp.Send(mail);



            try
            {
                string receiverEmailId = "vbosvaldo@gmail.com";
                string senderName = ConfigurationManager.AppSettings["apgesdevelopers@gmail.com"].ToString();
                string mailServer = ConfigurationManager.AppSettings["smtp.gmail.com"].ToString(); ;
                string senderEmailId = ConfigurationManager.AppSettings["apgesdevelopers@gmail.com"].ToString();
                string password = ConfigurationManager.AppSettings["admin@#199710"].ToString();
                var fromAddress = new MailAddress(senderEmailId, senderName);
                var toAddress = new MailAddress(receiverEmailId, "vbosvaldo@gmail.com");
                string subject = "subject";
                string body = "body.";
                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential(fromAddress.Address, password)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}