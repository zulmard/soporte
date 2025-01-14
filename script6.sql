USE [Aeropuerto6]
GO
/****** Object:  Table [dbo].[Aeropuerto]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aeropuerto](
	[IdAeropuerto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[CodigoIATA] [varchar](10) NULL,
	[Inicio] [date] NULL,
	[Objetivo] [varchar](100) NULL,
	[IdCiudad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asiento]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiento](
	[IdAsiento] [int] IDENTITY(1,1) NOT NULL,
	[Tamano] [varchar](50) NULL,
	[Numero] [int] NULL,
	[Ubicacion] [varchar](50) NULL,
	[IdVuelo] [int] NULL,
	[IdTipoAsiento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsientoDisponible]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsientoDisponible](
	[IdVuelo] [int] NOT NULL,
	[IdAsiento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVuelo] ASC,
	[IdAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avion]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avion](
	[IdAvion] [int] IDENTITY(1,1) NOT NULL,
	[Registro] [varchar](10) NULL,
	[Estado] [varchar](50) NULL,
	[InicioOperacion] [date] NULL,
	[IdModelo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAvion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billete]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billete](
	[CodigoBillete] [varchar](10) NOT NULL,
	[Numero] [varchar](10) NULL,
	[IdCliente] [int] NULL,
	[IdVuelo] [int] NULL,
	[IdAsiento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoBillete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[IdPais] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClasificacionCliente]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClasificacionCliente](
	[IdClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[FechaNacimiento] [date] NULL,
	[Nombre] [varchar](100) NULL,
	[NumeroFFC] [int] NULL,
	[IdClasificacion] [int] NULL,
	[IdNacionalidad] [int] NULL,
	[IdCiudad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contratacion]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratacion](
	[IdContratacion] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NULL,
	[IdProveedor] [int] NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdContratacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cupon]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cupon](
	[IdCupon] [int] IDENTITY(1,1) NOT NULL,
	[FechaRedencion] [date] NULL,
	[Clase] [varchar](50) NULL,
	[Standby] [bit] NULL,
	[CodigoComida] [varchar](10) NULL,
	[CodigoBillete] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCupon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[FechaContratacion] [date] NULL,
	[IdRolEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipaje]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipaje](
	[NumeroEquipaje] [int] IDENTITY(1,1) NOT NULL,
	[Peso] [decimal](5, 2) NULL,
	[IdCliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroEquipaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformeAuditoria]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformeAuditoria](
	[IdInformeAuditoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInformeAuditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformeSeguridad]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformeSeguridad](
	[IdInformeSeguridad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInformeSeguridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[IdMantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[IdAvion] [int] NULL,
	[Descripcion] [varchar](100) NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModeloAvion]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModeloAvion](
	[IdModelo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Capacidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[IdNacionalidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolEmpleado]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolEmpleado](
	[IdRolEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRolEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[IdRuta] [int] IDENTITY(1,1) NOT NULL,
	[IdAeropuertoOrigen] [int] NULL,
	[IdAeropuertoDestino] [int] NULL,
	[DuracionEstimada] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarjetaFrecuente]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarjetaFrecuente](
	[NumeroFFC] [int] NOT NULL,
	[Millas] [int] NULL,
	[CodigoComida] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroFFC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAsiento]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAsiento](
	[IdTipoAsiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vuelo]    Script Date: 28/08/2024 15:02:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vuelo](
	[IdVuelo] [int] IDENTITY(1,1) NOT NULL,
	[HoraSalida] [time](7) NULL,
	[FechaVuelo] [date] NULL,
	[Tipo] [varchar](50) NULL,
	[Aerolinea] [varchar](100) NULL,
	[IdAvion] [int] NULL,
	[IdRuta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aeropuerto] ON 

INSERT [dbo].[Aeropuerto] ([IdAeropuerto], [Nombre], [CodigoIATA], [Inicio], [Objetivo], [IdCiudad]) VALUES (1, N'Aeropuerto de Madrid-Barajas', N'MAD', CAST(N'2000-01-01' AS Date), N'Conectar con Europa', 1)
INSERT [dbo].[Aeropuerto] ([IdAeropuerto], [Nombre], [CodigoIATA], [Inicio], [Objetivo], [IdCiudad]) VALUES (2, N'Aeropuerto Internacional Benito Juárez', N'MEX', CAST(N'2005-06-01' AS Date), N'Conectar con América', 2)
INSERT [dbo].[Aeropuerto] ([IdAeropuerto], [Nombre], [CodigoIATA], [Inicio], [Objetivo], [IdCiudad]) VALUES (3, N'Aeropuerto Internacional John F. Kennedy', N'JFK', CAST(N'1995-09-01' AS Date), N'Conectar con América del Norte', 3)
INSERT [dbo].[Aeropuerto] ([IdAeropuerto], [Nombre], [CodigoIATA], [Inicio], [Objetivo], [IdCiudad]) VALUES (4, N'Aeropuerto Internacional de Toronto Pearson', N'YYZ', CAST(N'1990-11-01' AS Date), N'Conectar con América del Norte', 4)
INSERT [dbo].[Aeropuerto] ([IdAeropuerto], [Nombre], [CodigoIATA], [Inicio], [Objetivo], [IdCiudad]) VALUES (5, N'Aeropuerto de París-Charles de Gaulle', N'CDG', CAST(N'1985-03-01' AS Date), N'Conectar con Europa', 5)
SET IDENTITY_INSERT [dbo].[Aeropuerto] OFF
GO
SET IDENTITY_INSERT [dbo].[Asiento] ON 

INSERT [dbo].[Asiento] ([IdAsiento], [Tamano], [Numero], [Ubicacion], [IdVuelo], [IdTipoAsiento]) VALUES (1, N'Mediana', 1, N'Ventana', 1, 1)
INSERT [dbo].[Asiento] ([IdAsiento], [Tamano], [Numero], [Ubicacion], [IdVuelo], [IdTipoAsiento]) VALUES (2, N'Grande', 2, N'Pasillo', 1, 2)
INSERT [dbo].[Asiento] ([IdAsiento], [Tamano], [Numero], [Ubicacion], [IdVuelo], [IdTipoAsiento]) VALUES (3, N'Mediana', 3, N'Ventana', 2, 3)
INSERT [dbo].[Asiento] ([IdAsiento], [Tamano], [Numero], [Ubicacion], [IdVuelo], [IdTipoAsiento]) VALUES (4, N'Pequeña', 4, N'Pasillo', 2, 4)
INSERT [dbo].[Asiento] ([IdAsiento], [Tamano], [Numero], [Ubicacion], [IdVuelo], [IdTipoAsiento]) VALUES (5, N'Mediana', 5, N'Ventana', 3, 1)
SET IDENTITY_INSERT [dbo].[Asiento] OFF
GO
INSERT [dbo].[AsientoDisponible] ([IdVuelo], [IdAsiento]) VALUES (1, 1)
INSERT [dbo].[AsientoDisponible] ([IdVuelo], [IdAsiento]) VALUES (1, 2)
INSERT [dbo].[AsientoDisponible] ([IdVuelo], [IdAsiento]) VALUES (2, 3)
INSERT [dbo].[AsientoDisponible] ([IdVuelo], [IdAsiento]) VALUES (2, 4)
INSERT [dbo].[AsientoDisponible] ([IdVuelo], [IdAsiento]) VALUES (3, 5)
GO
SET IDENTITY_INSERT [dbo].[Avion] ON 

INSERT [dbo].[Avion] ([IdAvion], [Registro], [Estado], [InicioOperacion], [IdModelo]) VALUES (1, N'EC-MAD', N'Operativo', CAST(N'2015-05-01' AS Date), 1)
INSERT [dbo].[Avion] ([IdAvion], [Registro], [Estado], [InicioOperacion], [IdModelo]) VALUES (2, N'XA-MEX', N'Mantenimiento', CAST(N'2018-07-01' AS Date), 2)
INSERT [dbo].[Avion] ([IdAvion], [Registro], [Estado], [InicioOperacion], [IdModelo]) VALUES (3, N'N12345', N'Operativo', CAST(N'2017-09-01' AS Date), 3)
INSERT [dbo].[Avion] ([IdAvion], [Registro], [Estado], [InicioOperacion], [IdModelo]) VALUES (4, N'C-FTO', N'Operativo', CAST(N'2016-06-01' AS Date), 4)
INSERT [dbo].[Avion] ([IdAvion], [Registro], [Estado], [InicioOperacion], [IdModelo]) VALUES (5, N'F-GCDG', N'Operativo', CAST(N'2019-10-01' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Avion] OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre], [IdPais]) VALUES (1, N'Madrid', 1)
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre], [IdPais]) VALUES (2, N'Ciudad de México', 2)
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre], [IdPais]) VALUES (3, N'Nueva York', 3)
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre], [IdPais]) VALUES (4, N'Toronto', 4)
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre], [IdPais]) VALUES (5, N'París', 5)
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
GO
SET IDENTITY_INSERT [dbo].[ClasificacionCliente] ON 

INSERT [dbo].[ClasificacionCliente] ([IdClasificacion], [Descripcion]) VALUES (1, N'Básico')
INSERT [dbo].[ClasificacionCliente] ([IdClasificacion], [Descripcion]) VALUES (2, N'Silver')
INSERT [dbo].[ClasificacionCliente] ([IdClasificacion], [Descripcion]) VALUES (3, N'Gold')
INSERT [dbo].[ClasificacionCliente] ([IdClasificacion], [Descripcion]) VALUES (4, N'Platinum')
INSERT [dbo].[ClasificacionCliente] ([IdClasificacion], [Descripcion]) VALUES (5, N'Diamond')
SET IDENTITY_INSERT [dbo].[ClasificacionCliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [FechaNacimiento], [Nombre], [NumeroFFC], [IdClasificacion], [IdNacionalidad], [IdCiudad]) VALUES (3, CAST(N'1985-01-01' AS Date), N'John Doe', 100011, 1, 1, 1)
INSERT [dbo].[Cliente] ([IdCliente], [FechaNacimiento], [Nombre], [NumeroFFC], [IdClasificacion], [IdNacionalidad], [IdCiudad]) VALUES (4, CAST(N'1990-02-15' AS Date), N'Jane Smith', 100012, 2, 2, 2)
INSERT [dbo].[Cliente] ([IdCliente], [FechaNacimiento], [Nombre], [NumeroFFC], [IdClasificacion], [IdNacionalidad], [IdCiudad]) VALUES (5, CAST(N'1975-03-10' AS Date), N'Carlos Martínez', 100013, 3, 3, 3)
INSERT [dbo].[Cliente] ([IdCliente], [FechaNacimiento], [Nombre], [NumeroFFC], [IdClasificacion], [IdNacionalidad], [IdCiudad]) VALUES (6, CAST(N'1988-04-20' AS Date), N'María González', 100014, 4, 4, 4)
INSERT [dbo].[Cliente] ([IdCliente], [FechaNacimiento], [Nombre], [NumeroFFC], [IdClasificacion], [IdNacionalidad], [IdCiudad]) VALUES (7, CAST(N'1992-05-30' AS Date), N'Lucas Silva', 100015, 5, 5, 5)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Contratacion] ON 

INSERT [dbo].[Contratacion] ([IdContratacion], [IdEmpleado], [IdProveedor], [Fecha]) VALUES (2, 1, 1, CAST(N'2024-09-01' AS Date))
INSERT [dbo].[Contratacion] ([IdContratacion], [IdEmpleado], [IdProveedor], [Fecha]) VALUES (3, 2, 2, CAST(N'2024-09-02' AS Date))
INSERT [dbo].[Contratacion] ([IdContratacion], [IdEmpleado], [IdProveedor], [Fecha]) VALUES (4, 3, 3, CAST(N'2024-09-03' AS Date))
INSERT [dbo].[Contratacion] ([IdContratacion], [IdEmpleado], [IdProveedor], [Fecha]) VALUES (5, 4, 4, CAST(N'2024-09-04' AS Date))
INSERT [dbo].[Contratacion] ([IdContratacion], [IdEmpleado], [IdProveedor], [Fecha]) VALUES (6, 5, 5, CAST(N'2024-09-05' AS Date))
SET IDENTITY_INSERT [dbo].[Contratacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [FechaContratacion], [IdRolEmpleado]) VALUES (1, N'Luis Pérez', CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [FechaContratacion], [IdRolEmpleado]) VALUES (2, N'Ana García', CAST(N'2021-03-15' AS Date), 2)
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [FechaContratacion], [IdRolEmpleado]) VALUES (3, N'José Rodríguez', CAST(N'2023-06-01' AS Date), 3)
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [FechaContratacion], [IdRolEmpleado]) VALUES (4, N'María López', CAST(N'2020-11-20' AS Date), 4)
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [FechaContratacion], [IdRolEmpleado]) VALUES (5, N'Carlos Fernández', CAST(N'2019-08-30' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[ModeloAvion] ON 

INSERT [dbo].[ModeloAvion] ([IdModelo], [Descripcion], [Capacidad]) VALUES (1, N'Boeing 737', 150)
INSERT [dbo].[ModeloAvion] ([IdModelo], [Descripcion], [Capacidad]) VALUES (2, N'Airbus A320', 180)
INSERT [dbo].[ModeloAvion] ([IdModelo], [Descripcion], [Capacidad]) VALUES (3, N'Boeing 787', 250)
INSERT [dbo].[ModeloAvion] ([IdModelo], [Descripcion], [Capacidad]) VALUES (4, N'Airbus A380', 500)
INSERT [dbo].[ModeloAvion] ([IdModelo], [Descripcion], [Capacidad]) VALUES (5, N'Boeing 777', 300)
SET IDENTITY_INSERT [dbo].[ModeloAvion] OFF
GO
SET IDENTITY_INSERT [dbo].[Nacionalidad] ON 

INSERT [dbo].[Nacionalidad] ([IdNacionalidad], [Nombre]) VALUES (1, N'Española')
INSERT [dbo].[Nacionalidad] ([IdNacionalidad], [Nombre]) VALUES (2, N'Mexicana')
INSERT [dbo].[Nacionalidad] ([IdNacionalidad], [Nombre]) VALUES (3, N'Estadounidense')
INSERT [dbo].[Nacionalidad] ([IdNacionalidad], [Nombre]) VALUES (4, N'Canadiense')
INSERT [dbo].[Nacionalidad] ([IdNacionalidad], [Nombre]) VALUES (5, N'Francesa')
SET IDENTITY_INSERT [dbo].[Nacionalidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (1, N'España')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (2, N'México')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (3, N'Estados Unidos')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (4, N'Canadá')
INSERT [dbo].[Pais] ([IdPais], [Nombre]) VALUES (5, N'Francia')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON 

INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre]) VALUES (1, N'Proveedor A')
INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre]) VALUES (2, N'Proveedor B')
INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre]) VALUES (3, N'Proveedor C')
INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre]) VALUES (4, N'Proveedor D')
INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre]) VALUES (5, N'Proveedor E')
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[RolEmpleado] ON 

INSERT [dbo].[RolEmpleado] ([IdRolEmpleado], [Descripcion]) VALUES (1, N'Piloto')
INSERT [dbo].[RolEmpleado] ([IdRolEmpleado], [Descripcion]) VALUES (2, N'Auxiliar de vuelo')
INSERT [dbo].[RolEmpleado] ([IdRolEmpleado], [Descripcion]) VALUES (3, N'Técnico de mantenimiento')
INSERT [dbo].[RolEmpleado] ([IdRolEmpleado], [Descripcion]) VALUES (4, N'Agente de ventas')
INSERT [dbo].[RolEmpleado] ([IdRolEmpleado], [Descripcion]) VALUES (5, N'Personal de limpieza')
SET IDENTITY_INSERT [dbo].[RolEmpleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Ruta] ON 

INSERT [dbo].[Ruta] ([IdRuta], [IdAeropuertoOrigen], [IdAeropuertoDestino], [DuracionEstimada]) VALUES (1, 1, 2, CAST(N'12:00:00' AS Time))
INSERT [dbo].[Ruta] ([IdRuta], [IdAeropuertoOrigen], [IdAeropuertoDestino], [DuracionEstimada]) VALUES (2, 2, 3, CAST(N'05:00:00' AS Time))
INSERT [dbo].[Ruta] ([IdRuta], [IdAeropuertoOrigen], [IdAeropuertoDestino], [DuracionEstimada]) VALUES (3, 3, 4, CAST(N'08:00:00' AS Time))
INSERT [dbo].[Ruta] ([IdRuta], [IdAeropuertoOrigen], [IdAeropuertoDestino], [DuracionEstimada]) VALUES (4, 4, 5, CAST(N'07:00:00' AS Time))
INSERT [dbo].[Ruta] ([IdRuta], [IdAeropuertoOrigen], [IdAeropuertoDestino], [DuracionEstimada]) VALUES (5, 5, 1, CAST(N'11:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Ruta] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicio] ON 

INSERT [dbo].[Servicio] ([IdServicio], [Descripcion]) VALUES (1, N'Mantenimiento de avión')
INSERT [dbo].[Servicio] ([IdServicio], [Descripcion]) VALUES (2, N'Limpieza de aeronave')
INSERT [dbo].[Servicio] ([IdServicio], [Descripcion]) VALUES (3, N'Servicio al cliente')
INSERT [dbo].[Servicio] ([IdServicio], [Descripcion]) VALUES (4, N'Catering')
INSERT [dbo].[Servicio] ([IdServicio], [Descripcion]) VALUES (5, N'Seguridad')
SET IDENTITY_INSERT [dbo].[Servicio] OFF
GO
INSERT [dbo].[TarjetaFrecuente] ([NumeroFFC], [Millas], [CodigoComida]) VALUES (100011, 5000, N'Veg')
INSERT [dbo].[TarjetaFrecuente] ([NumeroFFC], [Millas], [CodigoComida]) VALUES (100012, 15000, N'No')
INSERT [dbo].[TarjetaFrecuente] ([NumeroFFC], [Millas], [CodigoComida]) VALUES (100013, 20000, N'Veg')
INSERT [dbo].[TarjetaFrecuente] ([NumeroFFC], [Millas], [CodigoComida]) VALUES (100014, 10000, N'No')
INSERT [dbo].[TarjetaFrecuente] ([NumeroFFC], [Millas], [CodigoComida]) VALUES (100015, 30000, N'Veg')
GO
SET IDENTITY_INSERT [dbo].[TipoAsiento] ON 

INSERT [dbo].[TipoAsiento] ([IdTipoAsiento], [Descripcion]) VALUES (1, N'Económica')
INSERT [dbo].[TipoAsiento] ([IdTipoAsiento], [Descripcion]) VALUES (2, N'Ejecutiva')
INSERT [dbo].[TipoAsiento] ([IdTipoAsiento], [Descripcion]) VALUES (3, N'Primera Clase')
INSERT [dbo].[TipoAsiento] ([IdTipoAsiento], [Descripcion]) VALUES (4, N'Premium Economy')
INSERT [dbo].[TipoAsiento] ([IdTipoAsiento], [Descripcion]) VALUES (5, N'Business')
SET IDENTITY_INSERT [dbo].[TipoAsiento] OFF
GO
SET IDENTITY_INSERT [dbo].[Vuelo] ON 

INSERT [dbo].[Vuelo] ([IdVuelo], [HoraSalida], [FechaVuelo], [Tipo], [Aerolinea], [IdAvion], [IdRuta]) VALUES (1, CAST(N'08:00:00' AS Time), CAST(N'2024-09-01' AS Date), N'Regular', N'Iberia', 1, 1)
INSERT [dbo].[Vuelo] ([IdVuelo], [HoraSalida], [FechaVuelo], [Tipo], [Aerolinea], [IdAvion], [IdRuta]) VALUES (2, CAST(N'14:00:00' AS Time), CAST(N'2024-09-02' AS Date), N'Charter', N'Aeroméxico', 2, 2)
INSERT [dbo].[Vuelo] ([IdVuelo], [HoraSalida], [FechaVuelo], [Tipo], [Aerolinea], [IdAvion], [IdRuta]) VALUES (3, CAST(N'19:00:00' AS Time), CAST(N'2024-09-03' AS Date), N'Regular', N'American Airlines', 3, 3)
INSERT [dbo].[Vuelo] ([IdVuelo], [HoraSalida], [FechaVuelo], [Tipo], [Aerolinea], [IdAvion], [IdRuta]) VALUES (4, CAST(N'22:00:00' AS Time), CAST(N'2024-09-04' AS Date), N'Regular', N'Air Canada', 4, 4)
INSERT [dbo].[Vuelo] ([IdVuelo], [HoraSalida], [FechaVuelo], [Tipo], [Aerolinea], [IdAvion], [IdRuta]) VALUES (5, CAST(N'11:00:00' AS Time), CAST(N'2024-09-05' AS Date), N'Charter', N'Air France', 5, 5)
SET IDENTITY_INSERT [dbo].[Vuelo] OFF
GO
ALTER TABLE [dbo].[Aeropuerto]  WITH CHECK ADD FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Asiento]  WITH CHECK ADD FOREIGN KEY([IdTipoAsiento])
REFERENCES [dbo].[TipoAsiento] ([IdTipoAsiento])
GO
ALTER TABLE [dbo].[Asiento]  WITH CHECK ADD FOREIGN KEY([IdVuelo])
REFERENCES [dbo].[Vuelo] ([IdVuelo])
GO
ALTER TABLE [dbo].[AsientoDisponible]  WITH CHECK ADD FOREIGN KEY([IdAsiento])
REFERENCES [dbo].[Asiento] ([IdAsiento])
GO
ALTER TABLE [dbo].[AsientoDisponible]  WITH CHECK ADD FOREIGN KEY([IdVuelo])
REFERENCES [dbo].[Vuelo] ([IdVuelo])
GO
ALTER TABLE [dbo].[Avion]  WITH CHECK ADD FOREIGN KEY([IdModelo])
REFERENCES [dbo].[ModeloAvion] ([IdModelo])
GO
ALTER TABLE [dbo].[Billete]  WITH CHECK ADD FOREIGN KEY([IdAsiento])
REFERENCES [dbo].[Asiento] ([IdAsiento])
GO
ALTER TABLE [dbo].[Billete]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Billete]  WITH CHECK ADD FOREIGN KEY([IdVuelo])
REFERENCES [dbo].[Vuelo] ([IdVuelo])
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdClasificacion])
REFERENCES [dbo].[ClasificacionCliente] ([IdClasificacion])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdNacionalidad])
REFERENCES [dbo].[Nacionalidad] ([IdNacionalidad])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([NumeroFFC])
REFERENCES [dbo].[TarjetaFrecuente] ([NumeroFFC])
GO
ALTER TABLE [dbo].[Contratacion]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Contratacion]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[Cupon]  WITH CHECK ADD FOREIGN KEY([CodigoBillete])
REFERENCES [dbo].[Billete] ([CodigoBillete])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([IdRolEmpleado])
REFERENCES [dbo].[RolEmpleado] ([IdRolEmpleado])
GO
ALTER TABLE [dbo].[Equipaje]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD FOREIGN KEY([IdAvion])
REFERENCES [dbo].[Avion] ([IdAvion])
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD FOREIGN KEY([IdAeropuertoOrigen])
REFERENCES [dbo].[Aeropuerto] ([IdAeropuerto])
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD FOREIGN KEY([IdAeropuertoDestino])
REFERENCES [dbo].[Aeropuerto] ([IdAeropuerto])
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD FOREIGN KEY([IdAvion])
REFERENCES [dbo].[Avion] ([IdAvion])
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
