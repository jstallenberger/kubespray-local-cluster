To run the Ansible Kubespray container:

```
make ansible-kubespray-up
```

To run the `cluster.yml` playbook for installing the cluster (from inside the container):

```
ansible-playbook -i /inventory/hosts.yml --user $ANSIBLE_UNAME --become --become-user=root cluster.yml
```
