
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/26/2013 21:36:58
-- Generated from EDMX file: C:\Users\marcus.hansson1\Dropbox\Programmering\C#\Arbete\Invoice\Invoice\Models\Dao\Invoicing.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Projektarbete];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ProjektCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_ProjektCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_DailyreportEmployees]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_DailyreportEmployees];
GO
IF OBJECT_ID(N'[dbo].[FK_DailyreportProjekt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_DailyreportProjekt];
GO
IF OBJECT_ID(N'[dbo].[FK_Projekt_inherits_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects_Projekt] DROP CONSTRAINT [FK_Projekt_inherits_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_Kund_inherits_Customer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers_Kund] DROP CONSTRAINT [FK_Kund_inherits_Customer];
GO
IF OBJECT_ID(N'[dbo].[FK_Dagsrapport_inherits_Dailyreport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Dailyreports_Dagsrapport] DROP CONSTRAINT [FK_Dagsrapport_inherits_Dailyreport];
GO
IF OBJECT_ID(N'[dbo].[FK_Anställd_inherits_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees_Anställd] DROP CONSTRAINT [FK_Anställd_inherits_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_Företag_inherits_Company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Companies_Företag] DROP CONSTRAINT [FK_Företag_inherits_Company];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Companies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Companies];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Dailyreports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Dailyreports];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Projects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projects];
GO
IF OBJECT_ID(N'[dbo].[Projects_Projekt]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projects_Projekt];
GO
IF OBJECT_ID(N'[dbo].[Customers_Kund]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers_Kund];
GO
IF OBJECT_ID(N'[dbo].[Dailyreports_Dagsrapport]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Dailyreports_Dagsrapport];
GO
IF OBJECT_ID(N'[dbo].[Employees_Anställd]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees_Anställd];
GO
IF OBJECT_ID(N'[dbo].[Companies_Företag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Companies_Företag];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Companies'
CREATE TABLE [dbo].[Companies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL,
    [Org__nummer] bigint  NOT NULL,
    [Momsreg__nummer] bigint  NOT NULL,
    [Adress] nvarchar(max)  NOT NULL,
    [Postnummer] nvarchar(max)  NOT NULL,
    [Land] nvarchar(max)  NOT NULL,
    [Epost] nvarchar(max)  NOT NULL,
    [Telefon] bigint  NOT NULL,
    [Hemsida] nvarchar(max)  NOT NULL,
    [Logotyp] nvarchar(max)  NOT NULL,
    [Övrig___information] nvarchar(max)  NOT NULL,
    [Ort] nvarchar(max)  NOT NULL
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

-- Creating table 'Dailyreports'
CREATE TABLE [dbo].[Dailyreports] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Datum] datetime  NOT NULL,
    [Kund] nvarchar(max)  NOT NULL,
    [Projekt] nvarchar(max)  NOT NULL,
    [Anställd] nvarchar(max)  NOT NULL,
    [StartTid] time  NOT NULL,
    [SlutTid] time  NOT NULL,
    [Employee_Id] int  NOT NULL,
    [Projekts_Id] int  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL,
    [Adress] nvarchar(max)  NOT NULL,
    [Telefon] int  NOT NULL,
    [Konto] bigint  NOT NULL
);
GO

-- Creating table 'Projects'
CREATE TABLE [dbo].[Projects] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Namn] nvarchar(max)  NOT NULL,
    [Kund] nvarchar(max)  NOT NULL,
    [StartDatum] datetime  NOT NULL,
    [SlutDatum] datetime  NOT NULL,
    [Beskrivning] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Projects_Projekt'
CREATE TABLE [dbo].[Projects_Projekt] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Customers_Kund'
CREATE TABLE [dbo].[Customers_Kund] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Dailyreports_Dagsrapport'
CREATE TABLE [dbo].[Dailyreports_Dagsrapport] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Employees_Anställd'
CREATE TABLE [dbo].[Employees_Anställd] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Companies_Företag'
CREATE TABLE [dbo].[Companies_Företag] (
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [PK_Companies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Dailyreports'
ALTER TABLE [dbo].[Dailyreports]
ADD CONSTRAINT [PK_Dailyreports]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [PK_Projects]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Projects_Projekt'
ALTER TABLE [dbo].[Projects_Projekt]
ADD CONSTRAINT [PK_Projects_Projekt]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers_Kund'
ALTER TABLE [dbo].[Customers_Kund]
ADD CONSTRAINT [PK_Customers_Kund]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Dailyreports_Dagsrapport'
ALTER TABLE [dbo].[Dailyreports_Dagsrapport]
ADD CONSTRAINT [PK_Dailyreports_Dagsrapport]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Employees_Anställd'
ALTER TABLE [dbo].[Employees_Anställd]
ADD CONSTRAINT [PK_Employees_Anställd]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Companies_Företag'
ALTER TABLE [dbo].[Companies_Företag]
ADD CONSTRAINT [PK_Companies_Företag]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Projekt_Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_ProjektCustomer]
    FOREIGN KEY ([Projekt_Id])
    REFERENCES [dbo].[Projects]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjektCustomer'
CREATE INDEX [IX_FK_ProjektCustomer]
ON [dbo].[Customers]
    ([Projekt_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'Dailyreports'
ALTER TABLE [dbo].[Dailyreports]
ADD CONSTRAINT [FK_DailyreportEmployees]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DailyreportEmployees'
CREATE INDEX [IX_FK_DailyreportEmployees]
ON [dbo].[Dailyreports]
    ([Employee_Id]);
GO

-- Creating foreign key on [Projekts_Id] in table 'Dailyreports'
ALTER TABLE [dbo].[Dailyreports]
ADD CONSTRAINT [FK_DailyreportProjekt]
    FOREIGN KEY ([Projekts_Id])
    REFERENCES [dbo].[Projects]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DailyreportProjekt'
CREATE INDEX [IX_FK_DailyreportProjekt]
ON [dbo].[Dailyreports]
    ([Projekts_Id]);
GO

-- Creating foreign key on [Id] in table 'Projects_Projekt'
ALTER TABLE [dbo].[Projects_Projekt]
ADD CONSTRAINT [FK_Projekt_inherits_Project]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Projects]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Customers_Kund'
ALTER TABLE [dbo].[Customers_Kund]
ADD CONSTRAINT [FK_Kund_inherits_Customer]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Dailyreports_Dagsrapport'
ALTER TABLE [dbo].[Dailyreports_Dagsrapport]
ADD CONSTRAINT [FK_Dagsrapport_inherits_Dailyreport]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Dailyreports]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Employees_Anställd'
ALTER TABLE [dbo].[Employees_Anställd]
ADD CONSTRAINT [FK_Anställd_inherits_Employee]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Companies_Företag'
ALTER TABLE [dbo].[Companies_Företag]
ADD CONSTRAINT [FK_Företag_inherits_Company]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Companies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------