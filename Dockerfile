FROM microsoft/aspnetcore:1.1
RUN "dotnet restore ./CIWorkflow.sln"
# && dotnet publish ./CIWorkflow.sln -c Release -o ./obj/Docker/publish"
EXPOSE 80
ENTRYPOINT ["dotnet", "./CIWorkflow.dll"]
