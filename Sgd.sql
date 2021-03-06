USE [master]
GO
/****** Object:  Database [sgdb]    Script Date: 31/01/2019 14:26:18 ******/
CREATE DATABASE [sgdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sgdb', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sgdb.mdf' , SIZE = 28736KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sgdb_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\sgdb_log.ldf' , SIZE = 16832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sgdb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sgdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sgdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sgdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sgdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sgdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sgdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [sgdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sgdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sgdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sgdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sgdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sgdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sgdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sgdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sgdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sgdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [sgdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sgdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sgdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sgdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sgdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sgdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sgdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sgdb] SET RECOVERY FULL 
GO
ALTER DATABASE [sgdb] SET  MULTI_USER 
GO
ALTER DATABASE [sgdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sgdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sgdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sgdb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sgdb', N'ON'
GO
USE [sgdb]
GO
/****** Object:  Schema [m2ss]    Script Date: 31/01/2019 14:26:18 ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NomeCategoria] [nvarchar](255) NULL DEFAULT (NULL),
	[DescricaoCategoria] [nvarchar](max) NULL,
 CONSTRAINT [PK_categoria_idCategoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Condicao_tb]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Condicao_tb](
	[idCondicao] [int] IDENTITY(1,1) NOT NULL,
	[idFuncao] [int] NULL,
	[Estado] [varchar](50) NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_Condicao_tb] PRIMARY KEY CLUSTERED 
(
	[idCondicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[iddepartamento] [int] IDENTITY(11,1) NOT NULL,
	[NomeDepartamento] [nvarchar](255) NULL DEFAULT (NULL),
	[DescricaoDepartamanto] [nvarchar](255) NULL DEFAULT (NULL),
 CONSTRAINT [PK_departamento_iddepartamento] PRIMARY KEY CLUSTERED 
(
	[iddepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[documento]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documento](
	[iddocumento] [int] IDENTITY(1,1) NOT NULL,
	[NomeDocumento] [nvarchar](255) NULL,
	[Descricao] [nvarchar](255) NULL,
	[Destaque] [nvarchar](50) NULL,
	[idPastaDocumento] [int] NULL,
	[idCategoria] [int] NULL,
	[DateUpload] [date] NULL,
 CONSTRAINT [PK_documento_iddocumento] PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[documentosenviados]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[documentosenviados](
	[idDocumentosEnviados] [int] IDENTITY(1,1) NOT NULL,
	[NomeDocumento] [nvarchar](405) NULL CONSTRAINT [DF__documento__NomeD__239E4DCF]  DEFAULT (NULL),
	[Ficheiro] [varbinary](max) NULL,
	[Extensao] [nvarchar](45) NULL CONSTRAINT [DF__documento__Exten__24927208]  DEFAULT (NULL),
	[idEnvio] [int] NULL,
 CONSTRAINT [PK_documentosenviados_idDocumentosEnviados] PRIMARY KEY CLUSTERED 
(
	[idDocumentosEnviados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EnviarDocumentos]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnviarDocumentos](
	[idEnvio] [int] IDENTITY(1,1) NOT NULL,
	[DataEnvio] [datetime] NULL,
	[idUsuario] [int] NULL,
	[idPastaDepartamento] [int] NULL,
	[Estado] [varchar](50) NULL,
	[Mensagem] [text] NULL,
	[Titulo] [varchar](50) NULL,
	[Contacto] [varchar](50) NULL,
	[NivelUrgencia] [varchar](50) NULL,
	[idCategoria] [int] NULL,
 CONSTRAINT [PK_EnviarDocumentos] PRIMARY KEY CLUSTERED 
(
	[idEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcoes_tb]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcoes_tb](
	[idFuncao] [int] IDENTITY(1,1) NOT NULL,
	[Funcao] [varchar](50) NULL,
	[Descricao] [text] NULL,
	[idTipoFuncao] [int] NULL,
 CONSTRAINT [PK_Funcoes_tb] PRIMARY KEY CLUSTERED 
(
	[idFuncao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pastadepartamento]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pastadepartamento](
	[idpastadepartamento] [int] IDENTITY(9,1) NOT NULL,
	[NomePasta] [nvarchar](255) NULL DEFAULT (NULL),
	[idDepartamento] [int] NOT NULL,
 CONSTRAINT [PK_pastadepartamento_idpastadepartamento] PRIMARY KEY CLUSTERED 
(
	[idpastadepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissaoPasta]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PermissaoPasta](
	[idPermissao] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[idPastaDepartamento] [int] NULL,
	[DataRegisto] [datetime] NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_PermissaoPasta] PRIMARY KEY CLUSTERED 
(
	[idPermissao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecebimentoDocumentos]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecebimentoDocumentos](
	[idRecebimento] [int] IDENTITY(1,1) NOT NULL,
	[DataRecebimento] [datetime] NULL,
	[idEnvio] [int] NULL,
	[idPastaDepartamento] [int] NULL,
	[Informacao] [text] NULL,
 CONSTRAINT [PK_RecebimentoDocumentos] PRIMARY KEY CLUSTERED 
(
	[idRecebimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RespostaDocumento]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RespostaDocumento](
	[idResposta] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[idEnvio] [int] NULL,
	[DatResposta] [datetime] NULL,
	[Resposta] [varchar](50) NULL,
	[Comentario] [text] NULL,
 CONSTRAINT [PK_RespostaDocumento] PRIMARY KEY CLUSTERED 
(
	[idResposta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoFuncao_tb]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoFuncao_tb](
	[idTipoFuncao] [int] IDENTITY(1,1) NOT NULL,
	[NomeTipo] [varchar](50) NULL,
	[Descricao] [text] NULL,
 CONSTRAINT [PK_TipoFuncao_tb] PRIMARY KEY CLUSTERED 
(
	[idTipoFuncao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[NomeUsuario] [nvarchar](255) NULL DEFAULT (NULL),
	[Email] [nvarchar](50) NULL DEFAULT (NULL),
	[Senha] [nvarchar](255) NULL DEFAULT (NULL),
 CONSTRAINT [PK_user_idUser] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_Expedientes]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Expedientes]
AS
SELECT        dbo.EnviarDocumentos.idEnvio, dbo.EnviarDocumentos.DataEnvio, dbo.EnviarDocumentos.Estado, dbo.EnviarDocumentos.Mensagem, dbo.EnviarDocumentos.Titulo, dbo.EnviarDocumentos.Contacto, 
                         dbo.EnviarDocumentos.NivelUrgencia, dbo.categoria.NomeCategoria, dbo.[user].NomeUsuario, dbo.[user].Email, dbo.[user].Senha, dbo.pastadepartamento.idpastadepartamento, dbo.pastadepartamento.NomePasta, 
                         dbo.departamento.iddepartamento, dbo.departamento.NomeDepartamento, dbo.[user].idUser, dbo.categoria.idCategoria
FROM            dbo.departamento INNER JOIN
                         dbo.pastadepartamento ON dbo.departamento.iddepartamento = dbo.pastadepartamento.idDepartamento INNER JOIN
                         dbo.EnviarDocumentos ON dbo.pastadepartamento.idpastadepartamento = dbo.EnviarDocumentos.idPastaDepartamento INNER JOIN
                         dbo.[user] ON dbo.EnviarDocumentos.idUsuario = dbo.[user].idUser INNER JOIN
                         dbo.categoria ON dbo.EnviarDocumentos.idCategoria = dbo.categoria.idCategoria

GO
/****** Object:  View [dbo].[View_Pastas]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Pastas]
AS
SELECT        dbo.departamento.iddepartamento, dbo.departamento.NomeDepartamento, dbo.pastadepartamento.idpastadepartamento, dbo.pastadepartamento.NomePasta
FROM            dbo.departamento INNER JOIN
                         dbo.pastadepartamento ON dbo.departamento.iddepartamento = dbo.pastadepartamento.idDepartamento

GO
/****** Object:  View [dbo].[View_PermissaoPasta]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_PermissaoPasta]
AS
SELECT        dbo.[user].idUser, dbo.[user].NomeUsuario, dbo.[user].Email, dbo.[user].Senha, dbo.pastadepartamento.idpastadepartamento, dbo.pastadepartamento.NomePasta, dbo.PermissaoPasta.idPermissao, 
                         dbo.PermissaoPasta.idUsuario, dbo.PermissaoPasta.DataRegisto, dbo.pastadepartamento.idDepartamento, dbo.PermissaoPasta.Estado
FROM            dbo.PermissaoPasta INNER JOIN
                         dbo.[user] ON dbo.PermissaoPasta.idUsuario = dbo.[user].idUser INNER JOIN
                         dbo.pastadepartamento ON dbo.PermissaoPasta.idPastaDepartamento = dbo.pastadepartamento.idpastadepartamento

GO
/****** Object:  View [dbo].[View_Recebimentos]    Script Date: 31/01/2019 14:26:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Recebimentos]
AS
SELECT        dbo.RecebimentoDocumentos.idRecebimento, dbo.RecebimentoDocumentos.DataRecebimento, dbo.RecebimentoDocumentos.idPastaDepartamento, dbo.RecebimentoDocumentos.Informacao, dbo.EnviarDocumentos.idEnvio, 
                         dbo.EnviarDocumentos.DataEnvio, dbo.EnviarDocumentos.idUsuario, dbo.EnviarDocumentos.Estado, dbo.EnviarDocumentos.Titulo, dbo.EnviarDocumentos.Contacto, dbo.EnviarDocumentos.NivelUrgencia, 
                         dbo.categoria.NomeCategoria, dbo.categoria.DescricaoCategoria, dbo.categoria.idCategoria, dbo.EnviarDocumentos.Mensagem
FROM            dbo.RecebimentoDocumentos INNER JOIN
                         dbo.EnviarDocumentos ON dbo.RecebimentoDocumentos.idEnvio = dbo.EnviarDocumentos.idEnvio INNER JOIN
                         dbo.categoria ON dbo.EnviarDocumentos.idCategoria = dbo.categoria.idCategoria

GO
/****** Object:  Index [FK_documento_idCategoria]    Script Date: 31/01/2019 14:26:18 ******/
CREATE NONCLUSTERED INDEX [FK_documento_idCategoria] ON [dbo].[documento]
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_pastadepartamento_idDeparta]    Script Date: 31/01/2019 14:26:18 ******/
CREATE NONCLUSTERED INDEX [FK_pastadepartamento_idDeparta] ON [dbo].[pastadepartamento]
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[documento] ADD  DEFAULT (NULL) FOR [NomeDocumento]
GO
ALTER TABLE [dbo].[documento] ADD  DEFAULT (NULL) FOR [Descricao]
GO
ALTER TABLE [dbo].[documento] ADD  DEFAULT (NULL) FOR [Destaque]
GO
ALTER TABLE [dbo].[documento] ADD  DEFAULT (NULL) FOR [idPastaDocumento]
GO
ALTER TABLE [dbo].[documento] ADD  DEFAULT (NULL) FOR [idCategoria]
GO
ALTER TABLE [dbo].[Condicao_tb]  WITH CHECK ADD  CONSTRAINT [FK_Condicao_tb_Funcoes_tb] FOREIGN KEY([idFuncao])
REFERENCES [dbo].[Funcoes_tb] ([idFuncao])
GO
ALTER TABLE [dbo].[Condicao_tb] CHECK CONSTRAINT [FK_Condicao_tb_Funcoes_tb]
GO
ALTER TABLE [dbo].[Condicao_tb]  WITH CHECK ADD  CONSTRAINT [FK_Condicao_tb_user] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[user] ([idUser])
GO
ALTER TABLE [dbo].[Condicao_tb] CHECK CONSTRAINT [FK_Condicao_tb_user]
GO
ALTER TABLE [dbo].[documentosenviados]  WITH CHECK ADD  CONSTRAINT [FK_documentosenviados_EnviarDocumentos] FOREIGN KEY([idEnvio])
REFERENCES [dbo].[EnviarDocumentos] ([idEnvio])
GO
ALTER TABLE [dbo].[documentosenviados] CHECK CONSTRAINT [FK_documentosenviados_EnviarDocumentos]
GO
ALTER TABLE [dbo].[EnviarDocumentos]  WITH CHECK ADD  CONSTRAINT [FK_EnviarDocumentos_categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[EnviarDocumentos] CHECK CONSTRAINT [FK_EnviarDocumentos_categoria]
GO
ALTER TABLE [dbo].[EnviarDocumentos]  WITH CHECK ADD  CONSTRAINT [FK_EnviarDocumentos_user] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[user] ([idUser])
GO
ALTER TABLE [dbo].[EnviarDocumentos] CHECK CONSTRAINT [FK_EnviarDocumentos_user]
GO
ALTER TABLE [dbo].[Funcoes_tb]  WITH CHECK ADD  CONSTRAINT [FK_Funcoes_tb_TipoFuncao_tb] FOREIGN KEY([idTipoFuncao])
REFERENCES [dbo].[TipoFuncao_tb] ([idTipoFuncao])
GO
ALTER TABLE [dbo].[Funcoes_tb] CHECK CONSTRAINT [FK_Funcoes_tb_TipoFuncao_tb]
GO
ALTER TABLE [dbo].[pastadepartamento]  WITH NOCHECK ADD  CONSTRAINT [pastadepartamento$FK_pastadepartamento_idDeparta] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[departamento] ([iddepartamento])
GO
ALTER TABLE [dbo].[pastadepartamento] CHECK CONSTRAINT [pastadepartamento$FK_pastadepartamento_idDeparta]
GO
ALTER TABLE [dbo].[PermissaoPasta]  WITH CHECK ADD  CONSTRAINT [FK_PermissaoPasta_pastadepartamento] FOREIGN KEY([idPastaDepartamento])
REFERENCES [dbo].[pastadepartamento] ([idpastadepartamento])
GO
ALTER TABLE [dbo].[PermissaoPasta] CHECK CONSTRAINT [FK_PermissaoPasta_pastadepartamento]
GO
ALTER TABLE [dbo].[PermissaoPasta]  WITH CHECK ADD  CONSTRAINT [FK_PermissaoPasta_user] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[user] ([idUser])
GO
ALTER TABLE [dbo].[PermissaoPasta] CHECK CONSTRAINT [FK_PermissaoPasta_user]
GO
ALTER TABLE [dbo].[RecebimentoDocumentos]  WITH CHECK ADD  CONSTRAINT [FK_RecebimentoDocumentos_EnviarDocumentos] FOREIGN KEY([idEnvio])
REFERENCES [dbo].[EnviarDocumentos] ([idEnvio])
GO
ALTER TABLE [dbo].[RecebimentoDocumentos] CHECK CONSTRAINT [FK_RecebimentoDocumentos_EnviarDocumentos]
GO
ALTER TABLE [dbo].[RecebimentoDocumentos]  WITH CHECK ADD  CONSTRAINT [FK_RecebimentoDocumentos_pastadepartamento] FOREIGN KEY([idPastaDepartamento])
REFERENCES [dbo].[pastadepartamento] ([idpastadepartamento])
GO
ALTER TABLE [dbo].[RecebimentoDocumentos] CHECK CONSTRAINT [FK_RecebimentoDocumentos_pastadepartamento]
GO
ALTER TABLE [dbo].[RespostaDocumento]  WITH CHECK ADD  CONSTRAINT [FK_RespostaDocumento_EnviarDocumentos] FOREIGN KEY([idEnvio])
REFERENCES [dbo].[EnviarDocumentos] ([idEnvio])
GO
ALTER TABLE [dbo].[RespostaDocumento] CHECK CONSTRAINT [FK_RespostaDocumento_EnviarDocumentos]
GO
ALTER TABLE [dbo].[RespostaDocumento]  WITH CHECK ADD  CONSTRAINT [FK_RespostaDocumento_user] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[user] ([idUser])
GO
ALTER TABLE [dbo].[RespostaDocumento] CHECK CONSTRAINT [FK_RespostaDocumento_user]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sgdb.categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'categoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sgdb.departamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'departamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sgdb.documento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'documento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sgdb.documentosenviados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'documentosenviados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sgdb.pastadepartamento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pastadepartamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'sgdb.`user`' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "departamento"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 192
               Right = 254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pastadepartamento"
            Begin Extent = 
               Top = 6
               Left = 292
               Bottom = 185
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EnviarDocumentos"
            Begin Extent = 
               Top = 6
               Left = 532
               Bottom = 202
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "user"
            Begin Extent = 
               Top = 6
               Left = 773
               Bottom = 170
               Right = 943
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 6
               Left = 981
               Bottom = 142
               Right = 1172
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 20
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Expedientes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Expedientes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Expedientes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "departamento"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 164
               Right = 254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pastadepartamento"
            Begin Extent = 
               Top = 6
               Left = 292
               Bottom = 203
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Pastas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Pastas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PermissaoPasta"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "user"
            Begin Extent = 
               Top = 17
               Left = 755
               Bottom = 147
               Right = 925
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pastadepartamento"
            Begin Extent = 
               Top = 90
               Left = 440
               Bottom = 203
               Right = 642
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PermissaoPasta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PermissaoPasta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RecebimentoDocumentos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 170
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EnviarDocumentos"
            Begin Extent = 
               Top = 6
               Left = 279
               Bottom = 211
               Right = 482
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 6
               Left = 520
               Bottom = 119
               Right = 711
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Recebimentos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Recebimentos'
GO
USE [master]
GO
ALTER DATABASE [sgdb] SET  READ_WRITE 
GO
