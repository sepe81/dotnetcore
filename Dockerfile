FROM microsoft/dotnet:latest

ADD ./app/ ./root/app/
WORKDIR /root/app/

RUN dotnet restore
RUN dotnet build

CMD ["dotnet", "run"]
