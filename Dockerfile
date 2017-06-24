FROM microsoft/aspnetcore:1.1
WORKDIR /app
RUN ls
RUN dotnet restore CIWorkflow.sln
RUN dotnet publish CIWorkflow.sln -c Release
RUN ls
EXPOSE 80
ENTRYPOINT ["dotnet", "./CIWorkflow.dll"]
