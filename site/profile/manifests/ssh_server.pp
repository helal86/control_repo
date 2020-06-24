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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4M6GXJlCXQLIiDODmTLBY2t8KSHDllT5al3T9UIj1uvcyMolSWzVx1HkIXQMQXTUEaJLNITasbpq/Dlh2SBIVp+6huh/3ssOmVjbxI8kXEB1WjqDdpImmxnwmtpdqIoqzxRd4LnJjUhKHI8qEkKoSEYXyXj0WBuXUi6DuP9szCruThj8DLxRsR/xSvzg1iS4MchDiRReGO0F+sSZMkAIoODIBqW2ZHfwF6pk+GSL3fP7w9UXNQzSqNysS/e6/o8bv0De7ZBnsuboAfTxQ70YXYsl8aYueeUolgBZ+d150Q1rt8FQERy7vIMaXa3L9vJ4MmugIaSrB+0XYgIqUuZAh',
	}  
}
