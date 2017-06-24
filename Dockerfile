FROM microsoft/aspnetcore:1.1
ARG source
WORKDIR /app
EXPOSE 80
RUN "dotnet restore ./CIWorkflow.sln && dotnet publish ./CIWorkflow.sln -c Release -o ./obj/Docker/publish"
COPY ${source:-obj/Docker/publish} .
ENTRYPOINT ["dotnet", "CIWorkflow.dll"]
