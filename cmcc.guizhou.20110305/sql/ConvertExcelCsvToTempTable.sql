--lac	
--ci	
--��ʼʱ��	
--С����	
--AR9303:����PDCH��ƽ������(����)	
--AR9311:ռ��PDCH��ƽ������(����)	
--AR9345:PDTCH����ɹ���(%)
USE [IP_Stream]
GO

/****** Object:  Table [dbo].[ciPdchBulk]    Script Date: 03/03/2011 11:06:30 ******/
IF  EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[ciPdchBulk]') AND type in (N'U'))
DROP TABLE [dbo].[ciPdchBulk]
GO
USE [IP_Stream]
GO
CREATE TABLE ciPdchBulk
( 
 lac  VARCHAR(32) null,
 ci  VARCHAR(32) null,
 ci_name VARCHAR(32) null,
 stat_time  VARCHAR(32) null,
 available_pdch VARCHAR(32) null,
 use_pdch VARCHAR(32) null,
 assignment_pdch_rate VARCHAR(32) null,
)

USE [IP_Stream]
GO
BULK INSERT ciPdchBulk
    FROM 'E:\PDCH_GUIZHOU\����GPRSͳ��0216(��).csv' 
    WITH 
    ( 
        FIRSTROW = 2,
        FIELDTERMINATOR = ',', 
        ROWTERMINATOR = '\n' 
    )

