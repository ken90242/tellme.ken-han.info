# VM configuration

### GCP

1. Select from marketplace: centos 7
2. Machine configuration: N1, n1-standard-1, 4G memory
3. Firewall: allow HTTP, HTTPS traffics
4. Add ssh key in VM instance edit page (under security tab)
---
5. Login with private key & its owner name, like `ssh-rsa ... <username>`
6. `sudo yum install -y git tmux htop`
7. type command: `sudo echo "LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8" > /etc/environment`
8. turn off SELinux
9. `sudo sh ./bootstrap.sh`, type `yes` for any prompt popping up.
10. It usually takes around 20 - 30 minutes to set up, if you respond to any prompt in time correctly.

