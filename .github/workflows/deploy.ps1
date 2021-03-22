$Files = "C:\runner\_\dotnet-framework-actions-example\dotnet-framework-actions-example\GithubActionsExample\Example.API\outproject\_PublishedWebsites\Example.API\*"
$Destination = "\\ZPMULWVCMSTG\c$\AppHosts\runnerApp"
copy-item -Path (Get-Item -Path "$Files").FullName -Include * -Destination "$Destination" -Force -Recurse -Confirm:$true

If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
$arguments = "& '" + $myinvocation.mycommand.definition + "'"
Start-Process powershell -Verb runAs -ArgumentList $arguments
}
