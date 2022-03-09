dotnet test calculation.tests/calculation.tests.csproj /p:CollectCoverage=true /p:CoverletOutputFormat=opencover
dotnet build-server shutdown
dotnet sonarscanner begin /k:"calculation" /d:sonar.host.url=http://localhost:9000 /d:sonar.cs.opencover.reportsPaths="calculation.tests\coverage.opencover.xml" /d:sonar.login="b6c3e795a3fdfd96586ba3463307947da8fb4ca5" /d:sonar.coverage.exclusions="**Tests*.cs"/d:sonar.coverage.exclusions="**Tests*.cs" 
dotnet build
dotnet sonarscanner /d:sonar.login="b6c3e795a3fdfd96586ba3463307947da8fb4ca5" end