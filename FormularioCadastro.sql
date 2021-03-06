USE [master]
GO
/****** Object:  Database [FormularioCadastro]    Script Date: 04/04/2018 19:58:46 ******/
CREATE DATABASE [FormularioCadastro] ON  PRIMARY 
( NAME = N'FormularioCadastro', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\FormularioCadastro.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FormularioCadastro_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\FormularioCadastro_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FormularioCadastro] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FormularioCadastro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FormularioCadastro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FormularioCadastro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FormularioCadastro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FormularioCadastro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FormularioCadastro] SET ARITHABORT OFF 
GO
ALTER DATABASE [FormularioCadastro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FormularioCadastro] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FormularioCadastro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FormularioCadastro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FormularioCadastro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FormularioCadastro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FormularioCadastro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FormularioCadastro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FormularioCadastro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FormularioCadastro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FormularioCadastro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FormularioCadastro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FormularioCadastro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FormularioCadastro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FormularioCadastro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FormularioCadastro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FormularioCadastro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FormularioCadastro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FormularioCadastro] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FormularioCadastro] SET  MULTI_USER 
GO
ALTER DATABASE [FormularioCadastro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FormularioCadastro] SET DB_CHAINING OFF 
GO
USE [FormularioCadastro]
GO
/****** Object:  Table [dbo].[TblFormulario]    Script Date: 04/04/2018 19:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblFormulario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](200) NULL,
	[SobreNome] [varchar](100) NULL,
	[DtNasc] [date] NULL,
	[Email] [varchar](100) NULL,
	[Endereco] [varchar](100) NULL,
	[Salario] [int] NULL,
 CONSTRAINT [PK_TblFormulario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [FormularioCadastro] SET  READ_WRITE 
GO
