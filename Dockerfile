FROM mcr.microsoft.com/mssql/server:2019-latest

# Define variáveis de ambiente
ENV SA_PASSWORD=YourStrong!Passw0rd
ENV ACCEPT_EULA=Y

# Copia os scripts de configuração para o contêiner
COPY ./scripts/ /usr/src/app/

# Remove a linha problemática
# RUN chmod +x /usr/src/app/*  <- Esta linha deve ser removida

# Executa o script de configuração na inicialização
CMD /bin/bash /usr/src/app/configure-db.sh
