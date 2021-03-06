USE [master]
GO
/****** Base de datos de estudiante creada por ******/
/****** Alberto echavarria        106-55555******/
/****** Ana graciela              999-55555 ******/
/****** Juan Alberto              106-77145******/
CREATE DATABASE [Universidad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Universidad', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\Universidad.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Universidad_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\Universidad_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Universidad] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Universidad].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Universidad] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Universidad] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Universidad] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Universidad] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Universidad] SET ARITHABORT OFF 
GO
ALTER DATABASE [Universidad] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Universidad] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Universidad] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Universidad] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Universidad] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Universidad] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Universidad] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Universidad] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Universidad] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Universidad] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Universidad] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Universidad] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Universidad] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Universidad] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Universidad] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Universidad] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Universidad] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Universidad] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Universidad] SET  MULTI_USER 
GO
ALTER DATABASE [Universidad] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Universidad] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Universidad] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Universidad] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Universidad] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Universidad] SET QUERY_STORE = OFF
GO
USE [Universidad]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Universidad]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 03/17/2018 11:08:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[id] [int] NULL,
	[ProfesorId] [int] NULL,
	[EstudianteId] [int] NULL,
	[SeccionId] [int] NULL,
	[CalificacionPArcial] [int] NULL,
	[CalificacionAsistencia] [int] NULL,
	[CalificacionPractica] [int] NULL,
	[CalificacionFinal] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 03/17/2018 11:08:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[id] [int] NULL,
	[matricula] [varchar](1) NULL,
	[nombre] [varchar](1) NULL,
	[apellido] [varchar](1) NULL,
	[edad] [int] NULL,
	[fechaNacimiento] [date] NULL,
	[carrera] [varchar](1) NULL,
	[sexo] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 03/17/2018 11:08:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[id] [int] NULL,
	[Nambre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Sueldo] [money] NULL,
	[Sexo] [char](1) NULL,
	[Especialidad] [varchar](50) NULL,
	[Cedula] [varchar](13) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secciones]    Script Date: 03/17/2018 11:08:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secciones](
	[id] [int] NULL,
	[Aula] [varchar](1) NULL,
	[Numero] [int] NULL,
	[ProfesorId] [int] NULL,
	[Edificio] [int] NULL,
	[Piso] [int] NULL,
	[Horario] [varchar](1) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Universidad] SET  READ_WRITE 
GO
