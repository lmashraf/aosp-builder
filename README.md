# aosp-builder

1- Install Docker
2- Run Jenkins instance inside docker container
```
docker run -u root --rm -d -p 8080:8080 -p 50000:50000 -v $HOME/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkinsci/blueocean
```

3- For this repository and create a new pipeline job that clones this repo.