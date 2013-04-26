
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/26/2013 11:43:53
-- Generated from EDMX file: C:\Users\linus.anderson\documents\visual studio 2010\Projects\Projektarbete\Projektarbete\Projekt_Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
Drop database [Projektarbete]
GO
Create database [Projektarbete]
go
USE [Projektarbete];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DailyreportProjekt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projekts] DROP CONSTRAINT [FK_DailyreportProjekt];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjektCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_ProjektCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_DailyreportEmployees]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_DailyreportEmployees];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Dailyreports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Dailyreports];
GO
IF OBJECT_ID(N'[dbo].[Projekts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projekts];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Companies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Companies];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Dailyreports'
CREATE TABLE [dbo].[Dailyreports] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Datum] datetime  NOT NULL,
    [Kund] nvarchar(max)  NOT NULL,
    [Projekt] nvarchar(max)  NOT NULL,
    [Anställd] nvarchar(max)  NOT NULL,
    [StartTid] time  NOT NULL,
    [SlutTid] time  NOT NULL
);
GO

-- Creating table 'Projekts'
CREATE TABLE [dbo].[Projekts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL,
    [Kund] nvarchar(max)  NOT NULL,
    [StartDatum] datetime  NOT NULL,
    [SlutDatum] datetime  NOT NULL,
    [Beskrivning] nvarchar(max)  NOT NULL,
    [Dailyreport_Id] int  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [ReferensPersoner] nvarchar(max)  NOT NULL,
    [Projekt_Id] int  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL,
    [Adress] nvarchar(max)  NOT NULL,
    [Telefon] int  NOT NULL,
    [Konto] bigint  NOT NULL,
    [Dailyreport_Id] int  NOT NULL
);
GO

-- Creating table 'Companies'
CREATE TABLE [dbo].[Companies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL,
    [OrgNummer] bigint  NOT NULL,
    [MomsregNummer] bigint  NOT NULL,
    [Adress] nvarchar(max)  NOT NULL,
    [PostnummerOrt] nvarchar(max)  NOT NULL,
    [Land] nvarchar(max)  NOT NULL,
    [Epost] nvarchar(max)  NOT NULL,
    [Telefon] bigint  NOT NULL,
    [Hemsida] nvarchar(max)  NOT NULL,
    [Logotyp] nvarchar(max)  NOT NULL,
    [ÖvrigInformation] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Dailyreports'
ALTER TABLE [dbo].[Dailyreports]
ADD CONSTRAINT [PK_Dailyreports]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Projekts'
ALTER TABLE [dbo].[Projekts]
ADD CONSTRAINT [PK_Projekts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [PK_Companies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Dailyreport_Id] in table 'Projekts'
ALTER TABLE [dbo].[Projekts]
ADD CONSTRAINT [FK_DailyreportProjekt]
    FOREIGN KEY ([Dailyreport_Id])
    REFERENCES [dbo].[Dailyreports]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DailyreportProjekt'
CREATE INDEX [IX_FK_DailyreportProjekt]
ON [dbo].[Projekts]
    ([Dailyreport_Id]);
GO

-- Creating foreign key on [Projekt_Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_ProjektCustomer]
    FOREIGN KEY ([Projekt_Id])
    REFERENCES [dbo].[Projekts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjektCustomer'
CREATE INDEX [IX_FK_ProjektCustomer]
ON [dbo].[Customers]
    ([Projekt_Id]);
GO

-- Creating foreign key on [Dailyreport_Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_DailyreportEmployees]
    FOREIGN KEY ([Dailyreport_Id])
    REFERENCES [dbo].[Dailyreports]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DailyreportEmployees'
CREATE INDEX [IX_FK_DailyreportEmployees]
ON [dbo].[Employees]
    ([Dailyreport_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
