USE [hospitalDB]
GO

/****** Object:  Table [dbo].[usuario]    Script Date: 05/05/2017 9:45:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tipo_usuario](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [tipo_usuario_PK] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[usuario](
	[dpi_codigo] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[contrasena] [varchar](50) NULL,
	[fecha_nacimiento] [varchar](12) NULL,
	[telefono] [int] NULL,
	[email] [varchar](50) NULL,
	[id_tipo] [int] NOT NULL,
 CONSTRAINT [usuario_PK] PRIMARY KEY CLUSTERED 
(
	[dpi_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [usuario_tipo_usuario_FK] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tipo_usuario] ([id_tipo])
GO

ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [usuario_tipo_usuario_FK]
GO


CREATE TABLE [dbo].[solicitud_cita](
	[id_solicitud] [int] IDENTITY(1,1) NOT NULL,
	[dpi] [int] NOT NULL,
	[tarjeta_sanitaria] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[fecha_nacimiento] [varchar](12) NULL,
	[captcha] [varchar](50) NULL,
	[doctor] [varchar](50) NULL,
	[sala] [varchar](20) NULL,
	[fecha] [varchar](12) NULL,
	[hora] [varchar](12) NULL,
 CONSTRAINT [solicitud_cita_PK] PRIMARY KEY CLUSTERED 
(
	[id_solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[historial_alta](
	[id_alta] [int] IDENTITY(1,1) NOT NULL,
	[nombre_paciente] [varchar](50) NULL,
	[tarjeta_sanitaria] [varchar](50) NULL,
	[enfermedad] [varchar](200) NULL,
	[nombre_doctor] [varchar](50) NULL,
	[fecha] [varchar](12) NULL,
	[hora] [varchar](12) NULL,
 CONSTRAINT [historial_alta_PK] PRIMARY KEY CLUSTERED 
(
	[id_alta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

