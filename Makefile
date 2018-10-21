all:

#
# Parameters
#

Name ?= ubuntu-server
Template ?= $(Name)
Location ?= northeurope


#
# Targets
#

.resource_group_action:
	az group show --name $(Name) >/dev/null 2>&1 || \
	  az group create --name $(Name) --location $(Location)
	az group deployment $(action) \
	  --resource-group $(Name) \
	  --template-file $(Template)/template.json

test:
	$(MAKE) .resource_group_action action=validate

deploy:
	$(MAKE) .resource_group_action action=create

clean:
	az group delete --name $(Name)

.SILENT:
