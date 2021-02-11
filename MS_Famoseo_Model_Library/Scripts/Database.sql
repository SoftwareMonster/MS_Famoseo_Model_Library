USE [MS_Famoseo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FamososSiguiendo]') AND type in (N'U'))
ALTER TABLE [dbo].[FamososSiguiendo] DROP CONSTRAINT IF EXISTS [DF_FamososSiguiendo_Fecha]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FamososSeguidores]') AND type in (N'U'))
ALTER TABLE [dbo].[FamososSeguidores] DROP CONSTRAINT IF EXISTS [DF_FamososSeguidores_Fecha]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FamososQuienSiguen]') AND type in (N'U'))
ALTER TABLE [dbo].[FamososQuienSiguen] DROP CONSTRAINT IF EXISTS [DF_FamososQuienSiguen_Fecha]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Eventos]') AND type in (N'U'))
ALTER TABLE [dbo].[Eventos] DROP CONSTRAINT IF EXISTS [DF_Eventos_Fecha]
GO
DROP TABLE IF EXISTS [dbo].[Grupos]
GO
DROP TABLE IF EXISTS [dbo].[FamososSiguiendo]
GO
DROP TABLE IF EXISTS [dbo].[FamososSeguidores]
GO
DROP TABLE IF EXISTS [dbo].[FamososQuienSiguen]
GO
DROP TABLE IF EXISTS [dbo].[Famosos]
GO
DROP TABLE IF EXISTS [dbo].[Eventos]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFamoso] [int] NULL,
	[Evento] [varchar](200) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Famosos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Famoso] [varchar](50) NULL,
	[PerfilInstagram] [varchar](100) NULL,
	[PerfilTwitter] [varchar](100) NULL,
	[IdGrupo] [int] NULL,
 CONSTRAINT [PK_Famosos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamososQuienSiguen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFamoso] [int] NULL,
	[PerfilInstagramSiguiendo] [varchar](100) NULL,
	[NombreInstagramSiguiendo] [varchar](50) NULL,
	[VerificadoInstagramSiguiendo] [bit] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_FamososQuienSiguen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamososSeguidores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFamoso] [int] NULL,
	[TotalSeguidores] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_FamososSeguidores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FamososSiguiendo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFamoso] [int] NULL,
	[TotalSiguiendo] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_FamososSiguiendo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Grupos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Famosos] ON 
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (1, N'Rafa Mora', N'https://www.instagram.com/rafamoratete/', N'https://twitter.com/rafamoratete', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (2, N'Kiko Matamoros', N'https://www.instagram.com/kiko_matamoros', N'https://twitter.com/kikomatamoros', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (3, N'Anabel Pantoja', N'https://www.instagram.com/anabelpantoja00', N'https://twitter.com/anabelpantoja00', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (4, N'Belen Esteban', N'https://www.instagram.com/belenestebanmenendez', N'https://twitter.com/belenestebanm', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (5, N'Kiko Hernandez', N'https://www.instagram.com/kikohernandeztv', N'https://twitter.com/Kiko_Hernandez', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (6, N'Mila Ximenez', N'https://www.instagram.com/milaximenezoficial', N'https://twitter.com/milaximenez', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (7, N'Víctor Sandoval', N'https://www.instagram.com/sandovalizateoficial', N'https://twitter.com/sandovalizate', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (8, N'Chelo García-Cortés', N'https://www.instagram.com/chelo_garcia_cortes', N'https://twitter.com/chgarciacortes', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (9, N'Marta López', N'https://www.instagram.com/martalopeztv', N'https://twitter.com/MartaLopezTV', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (10, N'José Antonio Canales Rivera', N'https://www.instagram.com/canalesrivera_oficial', NULL, 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (11, N'Gema López', N'https://www.instagram.com/bygemalopez', N'https://twitter.com/gemaconga', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (12, N'Gustavo González', N'https://www.instagram.com/gusgonzalves', N'https://twitter.com/gusgonzalves', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (13, N'Cristina Soria', N'https://www.instagram.com/cristinasoriacoach', N'https://twitter.com/csoriacoach', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (14, N'María Patiño', N'https://www.instagram.com/mariapatino1508', N'https://twitter.com/maria_patino', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (15, N'Jesús Manuel Ruiz', N'https://www.instagram.com/ruiz.jesusmanuel', N'https://twitter.com/jesusmanueltv', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (16, N'Laura Fa', N'https://www.instagram.com/laura__fa', N'https://twitter.com/laura__fa', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (17, N'Alonso Caparrós', N'https://www.instagram.com/alonsocaparrosoficial', N'https://twitter.com/alonsocaparros', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (18, N'Antonio Montero', N'https://www.instagram.com/antoniomonterov', N'https://twitter.com/antoniomonterov', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (19, N'Antonio David Flores', N'https://www.instagram.com/antoniodavidflores', N'https://twitter.com/adavidflores', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (20, N'Miguel Frigenti', N'https://www.instagram.com/miguelfrigenti', N'https://twitter.com/MiguelFrigenti', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (21, N'Kiko Jiménez', N'https://www.instagram.com/kikookiko', NULL, 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (22, N'Omar Suárez', N'https://www.instagram.com/omarsu', N'https://twitter.com/Omar_Su', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (23, N'José Antonio León', N'https://www.instagram.com/joseantonioleonn', N'https://twitter.com/Joseantonioleon', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (24, N'Kike Calleja', N'https://www.instagram.com/kikecalleja', N'https://twitter.com/kikecalleja', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (25, N'Sergi Ferré', N'https://www.instagram.com/sergiferre', N'https://twitter.com/sergiferre', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (26, N'Raúl G. Triguero', N'https://www.instagram.com/raulgtriguero', N'https://twitter.com/raulgtriguero', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (27, N'Paz Padilla', N'https://www.instagram.com/paz_padilla', N'https://twitter.com/pazpadilla', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (28, N'Jorge Javier Vázquez', N'https://www.instagram.com/jorgejaviervazquez', N'https://twitter.com/jjaviervazquez', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (29, N'Carlota Corredera', N'https://www.instagram.com/carlotacorredera', N'https://twitter.com/carlotallauger', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (30, N'Núria Marín', N'https://www.instagram.com/nuriasecret', N'https://twitter.com/nuriasecret', 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (31, N'David Valldeperas', N'https://www.instagram.com/davidvallde', NULL, 1)
GO
INSERT [dbo].[Famosos] ([Id], [Famoso], [PerfilInstagram], [PerfilTwitter], [IdGrupo]) VALUES (33, N'Sálvame Oficial', N'https://www.instagram.com/salvameoficial/', N'https://twitter.com/salvameoficial', 1)
GO
SET IDENTITY_INSERT [dbo].[Famosos] OFF
GO
SET IDENTITY_INSERT [dbo].[Grupos] ON 
GO
INSERT [dbo].[Grupos] ([Id], [Descripcion]) VALUES (1, N'Sálvame')
GO
INSERT [dbo].[Grupos] ([Id], [Descripcion]) VALUES (2, N'Viva la Vida')
GO
INSERT [dbo].[Grupos] ([Id], [Descripcion]) VALUES (3, N'Fresh')
GO
SET IDENTITY_INSERT [dbo].[Grupos] OFF
GO
ALTER TABLE [dbo].[Eventos] ADD  CONSTRAINT [DF_Eventos_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[FamososQuienSiguen] ADD  CONSTRAINT [DF_FamososQuienSiguen_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[FamososSeguidores] ADD  CONSTRAINT [DF_FamososSeguidores_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[FamososSiguiendo] ADD  CONSTRAINT [DF_FamososSiguiendo_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
