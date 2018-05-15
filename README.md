<h1> <img src="image/logo.png"> DevOps /etc</h1>

### Abandoned project... only here for personal reference

### Ansible Deployment
Deployment project that stands up a Drupal development environment on OSX, and a staging/production environment on Linux. Fully tagged and utilizes Ansible vault for keys and credentials.

### OSX Development Deployment:
Kicked off via osx/playbook.yml

### Ubuntu Staging/Production Deployment:
Kicked off via vagrant/vagrantfile

### Old bash path expansions
```
p_ply=$HOME/work/provision/playbook         # path: ansible assets
p_inv=$p_ply/inventory                      # path: ansible inventory
p_pbk=$p_ply/playbook.yml                   # path: ansible main playbook
p_vl=$p_ply/vars/vault_local.yml            # path: ansible vault_local.yml
p_vs=$p_ply/vars/vault_server.yml           # path: ansible vault_server.yml
```

### Old bash aliases
```
c_ap="ansible-playbook -i $p_inv $p_pbk"    # command: playbook & options
c_ap2=--ask-vault-pass                      # command: playbook vault option
alias avl='ansible-vault edit $p_vl'        # decrypt & edit vault_local.yml
alias avs='ansible-vault edit $p_vs'        # decrypt & edit vault_server.yml
alias ave='ansible-vault encrypt'           # add file encryption [path/file]
alias avd='ansible-vault decrypt'           # remove file encryption [path/file]
alias apl='$c_ap -l local -K $c_ap2 -vvv'   # run playbook host-limited: local
alias apd='$c_ap -l dev $c_ap2 -vvv'        # run playbook host-limited: dev
alias aps='$c_ap -l stage $c_ap2 -vvv'      # run playbook host-limited: stage
alias app='$c_ap -l prod $c_ap2 -vvv'       # run playbook host-limited: prod
alias aplm='$apd -t mod'                    # run dev play with tag: mod
alias aplr='$apd -t reset'                  # run dev play with tag: reset
alias aal='ansible -i $p_inv local -a'      # run adhoc command: local [command]
alias aad='ansible -i $p_inv dev -a'        # run adhoc command: dev [command]
alias aas='ansible -i $p_inv stage -a'      # run adhoc command: stage [command]
alias aap='ansible -i $p_inv prod -a'       # run adhoc command: prod [command]
alias aaP='ansible -i $p_inv all -m ping'   # run adhoc ping: all
```
