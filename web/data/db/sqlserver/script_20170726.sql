USE [P1M_arcgis]
GO
/****** Object:  Table [dbo].[Sheet1$]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sheet1$](
	[id] [float] NULL,
	[name] [nvarchar](255) NULL,
	[nickname] [nvarchar](255) NULL,
	[大类] [nvarchar](255) NULL,
	[小类] [nvarchar](255) NULL,
	[position] [nvarchar](255) NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[path] [varchar](max) NULL,
	[标准名称] [nvarchar](255) NULL,
	[图名图号（年版）] [nvarchar](255) NULL,
	[比例尺] [nvarchar](255) NULL,
	[使用时间] [nvarchar](255) NULL,
	[普查状态] [nvarchar](255) NULL,
	[设立年份] [nvarchar](255) NULL,
	[废止年份] [nvarchar](255) NULL,
	[东经] [nvarchar](255) NULL,
	[至东经] [nvarchar](255) NULL,
	[北纬] [nvarchar](255) NULL,
	[至北纬] [nvarchar](255) NULL,
	[坐标系] [nvarchar](255) NULL,
	[测量方法] [nvarchar](255) NULL,
	[地名来历] [ntext] NULL,
	[地名含义] [ntext] NULL,
	[历史沿革] [ntext] NULL,
	[地理实体描述] [ntext] NULL,
	[资料来源及出处] [nvarchar](255) NULL,
	[所在（跨）行政区] [nvarchar](255) NULL,
	[dist] [float] NULL,
	[citycode] [nvarchar](255) NULL,
	[ChnSpell] [nvarchar](255) NULL,
	[TSCG] [int] NULL,
	[DXCG] [int] NULL,
	[SJCG] [int] NULL,
	[SJQJ] [int] NULL,
	[SJHR] [int] NULL,
	[SJDJ] [int] NULL,
	[SJDS] [int] NULL,
	[YGCG] [int] NULL,
	[YGDS] [int] NULL,
	[SWCG] [int] NULL,
	[LTCG] [int] NULL,
	[SYCG] [int] NULL,
	[SPCG] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sheet1]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheet1](
	[id] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[nickname] [nvarchar](255) NULL,
	[大类] [nvarchar](255) NULL,
	[小类] [nvarchar](255) NULL,
	[position] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[Y] [nvarchar](255) NULL,
	[path] [ntext] NULL,
	[标准名称] [nvarchar](255) NULL,
	[图名图号（年版）] [nvarchar](255) NULL,
	[比例尺] [nvarchar](255) NULL,
	[使用时间] [nvarchar](255) NULL,
	[普查状态] [nvarchar](255) NULL,
	[设立年份] [nvarchar](255) NULL,
	[废止年份] [nvarchar](255) NULL,
	[东经] [nvarchar](255) NULL,
	[至东经] [nvarchar](255) NULL,
	[北纬] [nvarchar](255) NULL,
	[至北纬] [nvarchar](255) NULL,
	[坐标系] [nvarchar](255) NULL,
	[测量方法] [nvarchar](255) NULL,
	[地名来历] [nvarchar](255) NULL,
	[地名含义] [nvarchar](255) NULL,
	[历史沿革] [nvarchar](255) NULL,
	[地理实体描述] [nvarchar](255) NULL,
	[资料来源及出处] [nvarchar](255) NULL,
	[所在（跨）行政区] [nvarchar](255) NULL,
	[dist] [nvarchar](255) NULL,
	[citycode] [nvarchar](255) NULL,
	[ChnSpell] [nvarchar](255) NULL,
	[TSCG] [nvarchar](255) NULL,
	[DXCG] [nvarchar](255) NULL,
	[SJCG] [nvarchar](255) NULL,
	[SJQJ] [nvarchar](255) NULL,
	[SJHR] [nvarchar](255) NULL,
	[SJDJ] [nvarchar](255) NULL,
	[SJDS] [nvarchar](255) NULL,
	[YGCG] [nvarchar](255) NULL,
	[YGDS] [nvarchar](255) NULL,
	[SWCG] [nvarchar](255) NULL,
	[LTCG] [nvarchar](255) NULL,
	[SYCG] [nvarchar](255) NULL,
	[SPCG] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PN_TEMP]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PN_TEMP](
	[id] [bigint] NOT NULL,
	[PNid] [bigint] NULL,
	[ManageType] [nvarchar](15) NOT NULL,
	[name] [nvarchar](255) NULL,
	[nickname] [nvarchar](255) NULL,
	[大类] [nvarchar](31) NULL,
	[小类] [nvarchar](31) NULL,
	[position] [nvarchar](255) NULL,
	[X] [real] NULL,
	[Y] [real] NULL,
	[spaType] [smallint] NULL,
	[spaTypeName] [nvarchar](50) NULL,
	[path] [ntext] NULL,
	[标准名称] [nvarchar](255) NULL,
	[图名图号年版] [nvarchar](255) NULL,
	[比例尺] [nvarchar](255) NULL,
	[使用时间] [nvarchar](255) NULL,
	[普查状态] [nvarchar](255) NULL,
	[设立年份] [nvarchar](255) NULL,
	[废止年份] [nvarchar](255) NULL,
	[东经] [nvarchar](255) NULL,
	[至东经] [nvarchar](255) NULL,
	[北纬] [nvarchar](255) NULL,
	[至北纬] [nvarchar](255) NULL,
	[坐标系] [nvarchar](255) NULL,
	[测量方法] [nvarchar](255) NULL,
	[地名来历] [nvarchar](255) NULL,
	[地名含义] [ntext] NULL,
	[历史沿革] [ntext] NULL,
	[地理实体描述] [ntext] NULL,
	[资料来源及出处] [nvarchar](255) NULL,
	[所在跨行政区] [nvarchar](255) NULL,
	[dist] [bigint] NULL,
	[citycode] [nvarchar](255) NULL,
	[ChnSpell] [nvarchar](255) NULL,
	[brif] [nvarchar](50) NULL,
	[TSCG] [int] NULL,
	[DXCG] [int] NULL,
	[SJCG] [int] NULL,
	[SJQJ] [int] NULL,
	[SJHR] [int] NULL,
	[SJDJ] [int] NULL,
	[SJDS] [int] NULL,
	[YGCG] [int] NULL,
	[YGDS] [int] NULL,
	[SWCG] [int] NULL,
	[LTCG] [int] NULL,
	[SYCG] [int] NULL,
	[SPCG] [int] NULL,
	[intoTime] [date] NULL,
 CONSTRAINT [PK_PN_TEMP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PN_LINE]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PN_LINE](
	[OBJECTID] [int] IDENTITY(1,1) NOT NULL,
	[Shape] [geometry] NULL,
	[Id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[path] [text] NULL,
	[shapeCopy] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PN_HISTORY]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PN_HISTORY](
	[id] [bigint] NOT NULL,
	[PNid] [bigint] NULL,
	[ManageType] [nvarchar](15) NOT NULL,
	[name] [nvarchar](255) NULL,
	[nickname] [nvarchar](255) NULL,
	[大类] [nvarchar](31) NULL,
	[小类] [nvarchar](31) NULL,
	[position] [nvarchar](255) NULL,
	[X] [real] NULL,
	[Y] [real] NULL,
	[spaType] [smallint] NULL,
	[spaTypeName] [nvarchar](50) NULL,
	[path] [ntext] NULL,
	[标准名称] [nvarchar](255) NULL,
	[图名图号年版] [nvarchar](255) NULL,
	[比例尺] [nvarchar](255) NULL,
	[使用时间] [nvarchar](255) NULL,
	[普查状态] [nvarchar](255) NULL,
	[设立年份] [nvarchar](255) NULL,
	[废止年份] [nvarchar](255) NULL,
	[东经] [nvarchar](255) NULL,
	[至东经] [nvarchar](255) NULL,
	[北纬] [nvarchar](255) NULL,
	[至北纬] [nvarchar](255) NULL,
	[坐标系] [nvarchar](255) NULL,
	[测量方法] [nvarchar](255) NULL,
	[地名来历] [nvarchar](255) NULL,
	[地名含义] [ntext] NULL,
	[历史沿革] [ntext] NULL,
	[地理实体描述] [ntext] NULL,
	[资料来源及出处] [nvarchar](255) NULL,
	[所在跨行政区] [nvarchar](255) NULL,
	[dist] [bigint] NULL,
	[citycode] [nvarchar](255) NULL,
	[ChnSpell] [nvarchar](255) NULL,
	[brif] [nvarchar](50) NULL,
	[TSCG] [int] NULL,
	[DXCG] [int] NULL,
	[SJCG] [int] NULL,
	[SJQJ] [int] NULL,
	[SJHR] [int] NULL,
	[SJDJ] [int] NULL,
	[SJDS] [int] NULL,
	[YGCG] [int] NULL,
	[YGDS] [int] NULL,
	[SWCG] [int] NULL,
	[LTCG] [int] NULL,
	[SYCG] [int] NULL,
	[SPCG] [int] NULL,
	[originTime] [date] NULL,
	[deleteTime] [date] NULL,
 CONSTRAINT [PK_PN_HISTORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PN]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PN](
	[id] [bigint] NOT NULL,
	[name] [nvarchar](255) NULL,
	[nickname] [nvarchar](255) NULL,
	[大类] [nvarchar](31) NULL,
	[小类] [nvarchar](31) NULL,
	[position] [nvarchar](255) NULL,
	[X] [real] NULL,
	[Y] [real] NULL,
	[spaType] [smallint] NULL,
	[spaTypeName] [nvarchar](50) NULL,
	[path] [ntext] NULL,
	[标准名称] [nvarchar](255) NULL,
	[图名图号年版] [nvarchar](255) NULL,
	[比例尺] [nvarchar](255) NULL,
	[使用时间] [nvarchar](255) NULL,
	[普查状态] [nvarchar](255) NULL,
	[设立年份] [nvarchar](255) NULL,
	[废止年份] [nvarchar](255) NULL,
	[东经] [nvarchar](255) NULL,
	[至东经] [nvarchar](255) NULL,
	[北纬] [nvarchar](255) NULL,
	[至北纬] [nvarchar](255) NULL,
	[坐标系] [nvarchar](255) NULL,
	[测量方法] [nvarchar](255) NULL,
	[地名来历] [nvarchar](255) NULL,
	[地名含义] [ntext] NULL,
	[历史沿革] [ntext] NULL,
	[地理实体描述] [ntext] NULL,
	[资料来源及出处] [nvarchar](255) NULL,
	[所在跨行政区] [nvarchar](255) NULL,
	[dist] [bigint] NULL,
	[citycode] [nvarchar](255) NULL,
	[ChnSpell] [nvarchar](255) NULL,
	[brif] [nvarchar](50) NULL,
	[TSCG] [int] NULL,
	[DXCG] [int] NULL,
	[SJCG] [int] NULL,
	[SJQJ] [int] NULL,
	[SJHR] [int] NULL,
	[SJDJ] [int] NULL,
	[SJDS] [int] NULL,
	[YGCG] [int] NULL,
	[YGDS] [int] NULL,
	[SWCG] [int] NULL,
	[LTCG] [int] NULL,
	[SYCG] [int] NULL,
	[SPCG] [int] NULL,
	[intoTime] [date] NULL,
 CONSTRAINT [PK_PN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceType]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceType](
	[name] [nvarchar](126) NULL,
	[par] [nvarchar](126) NULL,
	[treestate] [nvarchar](14) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENSHIDIVID]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENSHIDIVID](
	[OBJECTID] [int] IDENTITY(1,1) NOT NULL,
	[Shape] [geometry] NULL,
	[Id] [bigint] NULL,
	[Grade] [int] NULL,
	[AdminGrade] [nvarchar](16) NULL,
	[Left_] [bigint] NULL,
	[Right_] [bigint] NULL,
	[LeftName] [nvarchar](64) NULL,
	[RightName] [nvarchar](64) NULL,
	[path] [text] NULL,
	[shapeCopy] [text] NULL,
 CONSTRAINT [PK__ENSHIDIV__F4B70D850425A276] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENSHIDISTS]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENSHIDISTS](
	[OBJECTID] [int] IDENTITY(1,1) NOT NULL,
	[Shape] [geometry] NULL,
	[Id] [bigint] NULL,
	[PNid] [bigint] NULL,
	[Name] [nvarchar](10) NULL,
	[Grade] [nvarchar](8) NULL,
	[AdminGrade] [int] NULL,
	[path] [text] NULL,
	[shapeCopy] [text] NULL,
	[treestate] [nvarchar](10) NULL,
 CONSTRAINT [PK__ENSHIDIS__F4B70D8521B6055D] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENSHIBOUNDRYMARKER]    Script Date: 07/27/2017 13:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENSHIBOUNDRYMARKER](
	[OBJECTID] [int] IDENTITY(1,1) NOT NULL,
	[Shape] [geometry] NULL,
	[Id] [bigint] NULL,
	[Name] [nvarchar](64) NULL,
	[Bound1ID] [bigint] NULL,
	[Bound2ID] [bigint] NULL,
	[Bound3ID] [bigint] NULL,
	[Bound4ID] [bigint] NULL,
	[Bound5ID] [bigint] NULL,
	[type] [int] NULL,
	[TypeName] [nvarchar](32) NULL,
 CONSTRAINT [PK__ENSHIBOU__F4B70D857F60ED59] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
