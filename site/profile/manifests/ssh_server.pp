class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDw4HXZen+GaglQ67+mCjDODHdHSq68tzcKjR3WBpZ+TB8P4tFKOWialBh0IuDv+Dj7S504NkDn7xN2Yjroj9oz1jJCKokHFelkL52tJgGndKOIBI1mS/DQ12pjw8wcBYWZ4bM7Edc8hRdJIUV/16vryw3HKft9ySVHDHQC9T6qdkrUEdtuKC6B8+z2P5+Tk1g24JqdDoydot7Ia1mFbmjhqPlJ9YhzIzdhqmSNC4D6AOwP5Szg0XRbhzZOAo6AnQ9Xx+JVE2I0OitZrl1xgTyFK8XBtKiBcZZnXRFUz4ku/T5oheHOR6VHq2IxM4qhG1iQq5O7ZGquga7E4rPXqR+J',
	}  
}
