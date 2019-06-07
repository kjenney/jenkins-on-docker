# jenkins-on-docker

Run Jenkins in a container with Jenkins Worflow to manage CI/CD across environments

## Build with:

```
docker build -t jenkins .
```

## Start with:

```
docker run \
  -p 8080:8080 \
  -p 50000:50000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v jenkins_home:/var/jenkins_home \
  --name jenkins \
  jenkins
```

## Clean up:

```
docker stop jenkins
docker rm jenkins
docker volume rm jenkins_home
```
