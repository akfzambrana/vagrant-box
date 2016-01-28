# Vagrant Box (virtual machine) for frontend development
My main goal is have a base environment for development without highly customized configuration

## Requirements:
- Oracle Virtual Box https://www.virtualbox.org/wiki/Downloads
- Vagrant https://www.vagrantup.com/downloads.html

I'm using a customized box based on ubuntu/vivid64 but with all we need to work as a frontend developer

You can configure two things in this virtual machine, using environment variables:
  - Amount of memory: vm_memory (default is 2048MB)
  - Amount of cpus: vm_cpus (default is 4)

I have created two options of boxs. It's possible to run both at the same time, but this isn't the objetive. My goal is use one box at a time, depending of the project that I'm working on.

If you want to know more about multi-VM environments, please take a look to the [Vagrant's documentation](https://docs.vagrantup.com/v2/multi-machine/).

## Usage
(This commands need to run in the VM directory)

### Start (turn on)
`vagrant up <box name>`

### SSH access
`vagrant ssh <box name>`

### Updating box configurations (if needed)
`vagrant provision <box name>`

### Shut down (turn off)
`vagrant halt <box name>`

## Boxes available
### Front-end box [name: **frontend**]
It's my frontend development basic environment

### Installed components
  - git
  - nodejs
  - npm
  - grunt
  - gulp

## Todo
  - Apache server or Lamp environment
  - Make nodebots box work
