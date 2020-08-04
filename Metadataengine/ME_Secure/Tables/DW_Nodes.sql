﻿CREATE TABLE [ME_Secure].[DW_Nodes] (
    [Id]             BIGINT        IDENTITY (1, 1) NOT NULL,
    [DWName]         VARCHAR (500) NOT NULL,
    [DWArcType]      VARCHAR (100) NOT NULL,
    [DWHostName]     VARCHAR (500) NOT NULL,
    [DWDBName]       VARCHAR (200) NOT NULL,
    [DWUserName]     VARCHAR (100) NOT NULL,
    [DWUserKVSecret] VARCHAR (100) NOT NULL
);

