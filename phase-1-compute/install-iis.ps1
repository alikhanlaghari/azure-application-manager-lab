# Install IIS Web Server
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Create a simple web page
$webPage = "C:\inetpub\wwwroot\index.html"

@"
<html>
<head>
    <title>Azure VM IIS Test</title>
</head>
<body>
    <h1>Azure IIS Deployment Successful</h1>
    <p>This IIS site was installed using Azure Custom Script Extension.</p>
</body>
</html>
"@ | Out-File -Encoding UTF8 $webPage

# Restart IIS
iisreset
