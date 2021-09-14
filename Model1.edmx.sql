
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/14/2021 14:16:51
-- Generated from EDMX file: C:\Users\barra\Desktop\examenWEB3\WebApplication1\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [examen1erpw3];
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

-- Creating table 'GastoSet'
CREATE TABLE [dbo].[GastoSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Fecha] nvarchar(max)  NOT NULL,
    [Cantidad] nvarchar(max)  NOT NULL,
    [CategoriaID] nvarchar(max)  NOT NULL,
    [MonedaID] nvarchar(max)  NOT NULL,
    [LugarID] nvarchar(max)  NOT NULL,
    [Categoria_ID] int  NOT NULL,
    [Lugar_ID] int  NOT NULL,
    [Moneda_ID] int  NOT NULL
);
GO

-- Creating table 'CategoriaSet'
CREATE TABLE [dbo].[CategoriaSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MonedaSet'
CREATE TABLE [dbo].[MonedaSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LugarSet'
CREATE TABLE [dbo].[LugarSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [LugarLugar_Lugar1_ID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'GastoSet'
ALTER TABLE [dbo].[GastoSet]
ADD CONSTRAINT [PK_GastoSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CategoriaSet'
ALTER TABLE [dbo].[CategoriaSet]
ADD CONSTRAINT [PK_CategoriaSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'MonedaSet'
ALTER TABLE [dbo].[MonedaSet]
ADD CONSTRAINT [PK_MonedaSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'LugarSet'
ALTER TABLE [dbo].[LugarSet]
ADD CONSTRAINT [PK_LugarSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Categoria_ID] in table 'GastoSet'
ALTER TABLE [dbo].[GastoSet]
ADD CONSTRAINT [FK_CategoriaGasto]
    FOREIGN KEY ([Categoria_ID])
    REFERENCES [dbo].[CategoriaSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoriaGasto'
CREATE INDEX [IX_FK_CategoriaGasto]
ON [dbo].[GastoSet]
    ([Categoria_ID]);
GO

-- Creating foreign key on [LugarLugar_Lugar1_ID] in table 'LugarSet'
ALTER TABLE [dbo].[LugarSet]
ADD CONSTRAINT [FK_LugarLugar]
    FOREIGN KEY ([LugarLugar_Lugar1_ID])
    REFERENCES [dbo].[LugarSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LugarLugar'
CREATE INDEX [IX_FK_LugarLugar]
ON [dbo].[LugarSet]
    ([LugarLugar_Lugar1_ID]);
GO

-- Creating foreign key on [Lugar_ID] in table 'GastoSet'
ALTER TABLE [dbo].[GastoSet]
ADD CONSTRAINT [FK_LugarGasto]
    FOREIGN KEY ([Lugar_ID])
    REFERENCES [dbo].[LugarSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LugarGasto'
CREATE INDEX [IX_FK_LugarGasto]
ON [dbo].[GastoSet]
    ([Lugar_ID]);
GO

-- Creating foreign key on [Moneda_ID] in table 'GastoSet'
ALTER TABLE [dbo].[GastoSet]
ADD CONSTRAINT [FK_MonedaGasto]
    FOREIGN KEY ([Moneda_ID])
    REFERENCES [dbo].[MonedaSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MonedaGasto'
CREATE INDEX [IX_FK_MonedaGasto]
ON [dbo].[GastoSet]
    ([Moneda_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------