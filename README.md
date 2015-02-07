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
### How to start up the final box?
You have to add your box to vagrant by running:
```sh
packeruser@devops:~$ vagrant box add debian-7.8.0-amd64_virtualbox.box --name "debianvm"
```

After that you have to configure your vagrant box:
Create an empty vagrant configuration file
```sh
packeruser@devops:~$ vagrant init
```
Edit the resulting file (vagrantfile) and set the box that you want to handle. 
```
config.vm.box=debianvm
```

Finally, configure the networking. To do that edit again the vagran file and set the
values you want under the config.vm.network configuration. 
If you need more information regarding to vagrant networking go to https://docs.vagrantup.com/v2/getting-started/networking.html

You could find my vagrant configuration under de folder vagrant. 

Once the vagrant box has been configured you can start up the box by running:

```sh
packeruser@devops:~$ vagrant up
```

To connect to the box, you can run:
```sh
packeruser@devops:~$ vagrant ssh
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

