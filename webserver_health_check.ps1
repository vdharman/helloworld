
[CmdletBinding()]
param (
    [Parameter(Mandatory)] [string] $web_server_ip
)
try {
    $uri = "http://$($web_server_ip)"
    $statusCode = (Invoke-WebRequest -Uri $uri).StatusCode
    if($statusCode -eq 200)  
    {
        Write-Host "Web server running..."
    }   
    else
    {
        Write-Host "Web server is down..."
    }
}
catch {
    Write-Host "Web server not reachable..."
}
