
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/20/2013 16:58:18
-- Generated from EDMX file: C:\Users\linus.anderson\documents\visual studio 2010\Projects\Projektarbete\Projektarbete\Projekt_Model.edmx
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


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
    [FöretagsNummer] bigint  NOT NULL,
    [Anställda] nvarchar(max)  NOT NULL,
    [Customer_Id] int  NOT NULL,
    [Employee_Id] int  NOT NULL
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

-- Creating foreign key on [Customer_Id] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_CustomerCompany]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerCompany'
CREATE INDEX [IX_FK_CustomerCompany]
ON [dbo].[Companies]
    ([Customer_Id]);
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

-- Creating foreign key on [Employee_Id] in table 'Companies'
ALTER TABLE [dbo].[Companies]
ADD CONSTRAINT [FK_EmployeesCompany]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Employees]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeesCompany'
CREATE INDEX [IX_FK_EmployeesCompany]
ON [dbo].[Companies]
    ([Employee_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
