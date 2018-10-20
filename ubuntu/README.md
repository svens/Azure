# Deploy Canonical UbuntuServer 16.04-LTS

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fsvens%2FAzure%2Fmaster%2Fubuntu%2Ftemplate.json" target="_blank">
  <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fsvens%2FAzure%2Fmaster%2Fubuntu%2Ftemplate.json" target="_blank">
  <img src="http://armviz.io/visualizebutton.png"/>
</a>

Canonical Ubuntu server 16.04-LTS with SSH public key for user. Includes:
- virtual network with inbound rule for SSH port
- public IP address (dynamic)
- public FQDN

Outputs login information at the end of deployment
