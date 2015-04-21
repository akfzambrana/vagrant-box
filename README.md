# vm
Vagrant Virtual Machine for frontend development

 Requirements:
- Oracle Virtual Box https://www.virtualbox.org/wiki/Downloads
- Vagrant https://www.vagrantup.com/downloads.html

I'm using a customized box based on ubuntu/trusty64 but with all we need to work as a frontend developer

You can configure two things in this virtual machine, using ambient variables:
  - Amount of memory: vm_memory (default is 2048MB)
  - Amount of cpus: vm_cpus (default is 4)

It's installed:
  - git [version 1.9.1]
  - nodejs [version 0.10.25]
  - npm [version 1.3.10]
