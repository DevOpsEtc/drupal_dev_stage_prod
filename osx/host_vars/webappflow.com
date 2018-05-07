---
################################################
#  filename: devopsetc.com	 	       #
#  path: ~/src/deploy/ansible/osx/host_vars/  #
#  version: 03/11/2015                 	       #
#  purpose: host variable for devopsetc.com   #
################################################

# conditionally load encrypted vault variables
# - include_vars: devopsetc.com_vault
  # when: inventory_hostname == "devopsetc.com" and ansible_os_family == "Debian"

drupal_domain: "devopsetc.com"
