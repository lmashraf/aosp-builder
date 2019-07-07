# aosp-builder

1- Install Docker
2- Fork this repository to your own
3- Run Jenkins instance inside a Docker container with the command
```
docker run -u root --rm -d -p 8080:8080 -p 50000:50000 -v $HOME/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/aosp:/aosp -v $HOME/artifacts:/artifacts -v $HOME/app:/app jenkinsci/blueocean
```

4- Add Jenkins' SSH access to your Git repository
```
docker ps
docker exec -it <container-id> /bin/bash

bash-4.4# ssh-keygen -t rsa
bash-4.4# cat /root/.ssh/id_rsa.pub
```

5- Go to `Settings`, then `SSH and GPG keys` click `Add SSH` and copy the content of the SSH Public Key.

6- On Jenkins's home page, click `Credentials` then `Add Credentials`, choose `SSH Username with private key` and then add the private key.

7- Create a new `Pipeline Job` and configure `Pipeline script from SCM` by specifying the Repository URL and the Credentials with the SSH private key which were created.