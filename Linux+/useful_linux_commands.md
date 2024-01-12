### Pulling part file from github
```bash
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz"    
```
### Used to extract the contents of a compressed file
```bash
tar -xvf mysql-*.tgz  
```
### Secure Copy Protocol is used to securely copy files from one server to another.
```bash
scp -i <pem file> <pem file> ec2-user@<public DNS name of Control Node>:/home/ec2-user
```
### It shows which branch it is on the terminal screen. Added to .bashrc
```bash
parse_git_branch() {
    git branch 2> /dev/null | sed -e ' /^[^*]/d' -e 's/*\(.*\)/(\1)/'
}
export PS1="\[\e[1;32m\]\u\[\e[35m\]@\h# \W:\e[33m\]\[\e[1;36m\]\$(parse_git_branch)$\[\033[00m\] "
```
