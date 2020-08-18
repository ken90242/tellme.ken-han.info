# VM configuration

### GCP

1. Select from marketplace: centos 7
2. Machine configuration: N1, n1-standard-1, 4G memory
3. Firewall: allow HTTP, HTTPS traffics
4. Add ssh key in VM instance edit page (under security tab)

> ssh key format: 
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcA6iMgcRG1JD83+Dthea9XSi+jHIynJmxR233dpqxwyw4vecEKIGLCAZuwsOm3zXJEJYan9lHJnIPgScdQFYAMOQFCcu8a9JKmK9i7OYDaqTOUyXtikjSMVcLK0N9qRbUIvr1dJNVY2edNXBwcxZKgf4cfuUaw8nVjRlwmBasidjse6muRid2TmuqiBuf6Krz3PxhUcdN2b4VC8n9C60eiVUB02MeeRkjDRK7FKZ+huDW3Ebrl0F4lwLA7UVuhgJRUrroYzeF2+/jD81BWKv628224odzPGiKV2Ecvpo+AHTssU0DCaHmfxb7SlL3l8pjF1zZOs3WpA2foNw6j/kxx username
```
---
5. Login with private key & its owner name, like `ssh -i <pem file> <username>@<ip address>` 
> (username depends on ssh key you added: `ssh-rsa ... <username>`)
6. `sudo yum install -y git tmux htop`
7. type command: `sudo echo "LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8" > /etc/environment`
8. turn off SELinux
9. Clone this project: `git clone https://github.com/ken90242/tellme.ken-han.info.git`
10. Type `tmux` to keep process running even unconnected
11. `sudo sh ./bootstrap.sh`, type `yes` for any prompt popping up.
12. It usually takes around 20 - 30 minutes to set up, if you respond to any prompt in time correctly.
---
### GCP
(optional) Network - VPC network - External IP addresses to reserve a static ip address
