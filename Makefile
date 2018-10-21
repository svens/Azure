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

.deploy:
	az deployment $(action) \
	  --location $(Location) \
	  --template-file deploy.json \
	  --parameters @$(Template)/deploy.parameters.json \
	    Location=$(Location)

test:
	$(MAKE) .deploy action=validate

deploy:
	$(MAKE) .deploy action=create

clean:
	az group delete --name $(Name)

.SILENT:
