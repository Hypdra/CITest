FROM microsoft/aspnetcore-build:1.0-1.1
WORKDIR /app
RUN dotnet restore CIWorkflow.sln
RUN dotnet publish CIWorkflow.sln -c Release
EXPOSE 80
ENTRYPOINT ["dotnet", "./CIWorkflow.dll"]
