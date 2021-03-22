$Files = "C:\runner\_\dotnet-framework-actions-example\dotnet-framework-actions-example\GithubActionsExample\Example.API\outproject\_PublishedWebsites\Example.API\*"
$Destination = "\\ZPMULWVCMSTG\c$\AppHosts\runnerApp"
copy-item -Path (Get-Item -Path "$Files").FullName -Include * -Destination "$Destination" -Force -Recurse
