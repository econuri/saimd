/***** Pylon_TableSchema_01 ******/
/***** update ; 21.10.05    ******/ 

if exists (select * from sysobjects where id = object_id(N'[dbo].[Version]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Version]
GO

USE PYLONV3
GO

/****** Get_User_info ******/

CREATE TABLE [dbo].[user_info](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[pwd] [varchar](20) NULL,
	[desc] [varchar](50) NULL,
	[auth] [varchar](10) NOT NULL,
	[createdate] [datetime] NULL,
	[updatedate] [datetime] NULL,
	[used] [int] NOT NULL
) ON [PRIMARY]
GO


/****** Get_Device_info ******/

CREATE TABLE [dbo].[dev_info](
	[id] [int] NOT NULL,
	[type] [varchar](10) NULL,
	[name_dev] [varchar](30) NULL,
	[name_ied] [varchar](50) NULL,
	[addr_ip] [varchar](50) NULL,
	[portnum] [int] NULL,
	[SCL] [varchar](50) NULL,
	[IET] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[updatedate] [datetime] NULL,
	[used] [int] NOT NULL,
	[version] [varchar](20) NULL,
	[icd_vaild] [varchar](2) NOT NULL DEFAULT ('n'),
 CONSTRAINT [PK_dev_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Get_dev_type ******/

CREATE TABLE [dbo].[dev_type](
	[id] [int] NOT NULL,
	[type] [varchar](30) NOT NULL
) ON [PRIMARY]
GO


/****** Get_NIC_info ******/

CREATE TABLE [dbo].[nic_info](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[desc] [varchar](50) NULL,
	[dev_ip] [varchar](50) NOT NULL,
	[createdate] [datetime] NULL,
	[updatedate] [datetime] NULL,
	[used] [int] NOT NULL
) ON [PRIMARY]
GO


/****** Get_port_mapping ******/

CREATE TABLE [dbo].[portmap](
	[id] [int] NOT NULL,
	[SNMP_id] [varchar](20) NOT NULL,
	[SNMP_portnum] [int] NULL,
	[dev_type] [varchar](10) NULL,
	[dev_name] [varchar](50) NOT NULL,
	[dev_ip] [varchar](50) NOT NULL,
	[createdate] [datetime] NULL,
	[updatedate] [datetime] NULL,
	[used] [int] NOT NULL
) ON [PRIMARY]
GO

////////////////////////////////////////////////////////
/****** Get_DB ******/

CREATE TABLE [dbo].[current_log](
	[seq] [int] NULL,
	[time] [datetime] NULL,
	[SNMP_id] [varchar](50) NULL,
	[SNMP_Ports] [varchar](50) NULL,
	[dev_name] [varchar](50) NULL,
	[status] [int] NULL,
) ON [PRIMARY]
GO

/****** Get_sys_info ******/
CREATE TABLE [dbo].[sys_info](
	[id] [int] NULL,
	[ntp_addr] [varchar](10) NULL,
	[ntp_poll] [int] NULL,
	[save_temp_process_MB] [varchar](50) NULL,
	[save_hdd_percent] [varchar](50) NULL,
	[autodelete_MB] [varchar](50) NULL,
	[MMS] [varchar](50) NULL,	
	[REPORT_publish_err] [varchar](50) NULL,	
	[GOOSE_publish_err] [int] NULL,
	[GOOSE_delay_1st] [int] NULL,
	[GOOSE_delay_2nd] [int] NULL,
	[GOOSE_avr_factor] [int] NULL,
	[REPORT_scan_maxtime] [int] NULL,
	[REPORT_valid_factor] [int] NULL,
  [EXT_SERVER_NIC_OLD] [varchar](50) NULL,
  [EXT_SERVER_NIC_NEW] [varchar](50) NULL,
  [EXT_SERVER_SCL_OLD] [varchar](50) NULL,
  [EXT_SERVER_SCL_NEW] [varchar](50) NULL,
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[ts_log_all](
	[id] [int] NULL,
	[time] [datetime] NULL,
	[dev] [varchar](50) NULL,
	[val] [varchar](50) NULL,
	[priority] [int] NULL,
	[quality] [int] NULL,
	[host] [varchar](30) NULL,
	[operator] [varchar](30) NULL
	[f_tag] [int] NULL
	[f_type] [varchar](10) NULL,
) ON [PRIMARY]
GO