#!/bin/bash

# Inicia o SQL Server em segundo plano
/opt/mssql/bin/sqlservr &

# Aguarda a inicialização do SQL Server
sleep 30

# Executa scripts SQL para configurar os bancos de dados
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "YourStrong!Passw0rd" -d master -i /usr/src/app/create-dbs.sql

# Mantém o contêiner em execução
wait
