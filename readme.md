# Ansible Exercise

### Playbooks

There are some notes about playbooks in both the `sample-inventory.yml` and 
`sample-playbook.yml` files. In order to run a playbook, use the following 
command: (We use the -i flag since we definined an inventory to use)

- `ansible-playbook -i sample-inventory.yml sample-playbook.yml`

### Modules

Modules are encapsulations of configurable and repeatable actions. One example
is the yum module in the `sample-playbook.yml`. Ansible has over 1300 modules, 
but if there isn't one for your specific need then you can write one or utilize
one of the lower level actions.

## From the [DevOps Bootcamp](https://devops-bootcamp.liatr.io/#/6-automation-and-orchestration/6.4-ansible?id=playbook-variables-templates-and-roles)

### Variables
Variables let you define values which can be used throughout your playbook to 
make it easier to reuse it for different hosts or environments. Variables can 
be defined in your inventory, playbook or can be imported from files. Read more
about [variables](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html).

### Templates
Ansible uses Jinja2 to create templates which can be used by your playbook 
tasks or can be copied onto your hosts. Jinja2 can incorporate variable values 
and has a variety of filters to generate the template content. Read more about 
[templates](https://docs.ansible.com/ansible/latest/user_guide/playbooks_templating.html).

### Roles
Roles let you organize you playbook in a more modular way by grouping task, 
variables, templates and other Ansible structures together. Read more about 
[roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html).