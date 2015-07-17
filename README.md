# vm
## Vagrant Virtual Machine for frontend development  
My main goal is have a base environment for development without highly customized configuration  

### Requirements:
- Oracle Virtual Box https://www.virtualbox.org/wiki/Downloads  
- Vagrant https://www.vagrantup.com/downloads.html  

I'm using a customized box based on ubuntu/trusty64 but with all we need to work as a frontend developer  

You can configure two things in this virtual machine, using environment variables:  
  - Amount of memory: vm_memory (default is 2048MB)
  - Amount of cpus: vm_cpus (default is 4)  

### Box 1
#### Installed components  
  - git
  - nodejs
  - npm
  
### Box 2
  - grunt
  - gulp

### Todo
  - Apache server or Lamp environment
  - Create recipes to provision