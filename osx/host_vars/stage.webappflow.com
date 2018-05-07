
---
#####################################################
#  filename: stage.devopsetc.com	 	                #
#  path: ~/src/deploy/ansible/osx/host_vars/  	    #
#  version: 03/11/2015                         	    #
#  purpose: host variable for stage.devopsetc.com  #
#####################################################

# conditionally load encrypted vault variables
# - include_vars: stage.devopsetc.com_vault
  # when: inventory_hostname == "stage.devopsetc.com" and ansible_os_family == "Debian"
drupal_domain: "stage.devopsetc.com"
