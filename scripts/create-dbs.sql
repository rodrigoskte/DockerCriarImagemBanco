-- Cria o primeiro banco de dados
CREATE DATABASE BSERVER;
GO

USE BSERVER;
GO

-- Configura as opções para o banco de dados
EXEC sp_executesql N'ALTER DATABASE Database1 SET ANSI_NULL_DEFAULT ON';
GO

EXEC sp_executesql N'SET ANSI_NULLS ON';
GO

-- Outras configurações ou comandos SQL para Database1
-- ...

-- Cria o segundo banco de dados
CREATE DATABASE Database2;
GO

USE Database2;
GO

-- Configura as opções para o banco de dados
EXEC sp_executesql N'ALTER DATABASE Database2 SET ANSI_NULL_DEFAULT ON';
GO

EXEC sp_executesql N'SET ANSI_NULLS ON';
GO

-- Outras configurações ou comandos SQL para Database2
-- ...
