FROM jenkins/jenkins:2.138.2-slim

USER root
RUN apt-get update \
    && apt-get install -y ruby make \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN usermod -aG docker jenkins

USER jenkins

#RUN /usr/local/bin/install-plugins.sh docker-slaves \
#    github-branch-source:1.8 \
#    folders \
#    antisamy-markup-formatter
