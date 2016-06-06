# hpe-alm-octane


This repository should contain everything you need to get a simple installation running on Azure.

The following steps require that you have working recent `docker-machine` and `docker-compose` installations on your workstation.


0. Clone the repo :-D

1. Make the *.sh scripts executable `chmod a+x *.sh`

2. Run `./create_azure.sh <azure-subscription-id> <vmname>`

3. execute `docker-machine env <vmname>` to see the required statement for setting your environment to the new machine (sth. like "eval $(docker-machine env ...)".

4. Run `docker-compose up --build -d && docker-compose logs -f` and wait ~2min

5. Use `docker-machine ip <vmname>` to get the ip for your Azure host and access the installation at "http://<ip>:8080/ui"


You can set a DNS name for the machine in the azure portal:

- Search for your Virtual machine
- Open "All settings" - "General/Properties" - "PUBLIC IP ADDRESS/DNS NAME LABEL" - "All settings" - "General/Configuration"
- Put the desired name into "DNS name label".

Now you can access the VM via <name>.westeurope.cloudapp.azure.com