# Playing with packer

## [debian-image] Base debian template for packer. 

### How to execute packer?
```sh
packeruser@devops:~$ packer build template.json
```
If you want to debug your image, you can execute packer as below:

```sh
packeruser@devops:~$ packer build -debug template.json
```

or in a more verbose way:
```sh
packeruser@devops:~$ export PACKER_LOG=DEBUG; packer build -debug template.json
```



**References**

Thanks for sharing!

* https://github.com/deimosfr/packer-debian/tree/master/scripts
* https://github.com/geerlingguy/ansible-role-packer-debian
* https://github.com/jdauphant/packer-debian-kvm-ansible
* http://es.slideshare.net/SarahZelechoski/ansible-how-to-get-more-sleep-and-require-less-coffee
* http://blog.endpoint.com/2014/03/provisioning-development-environment.html
* http://code.hootsuite.com/build-test-and-automate-server-image-creation/
* https://github.com/ffuenf/vagrant-boxes/tree/master/packer

