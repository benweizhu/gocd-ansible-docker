FROM gocd/gocd-agent-ubuntu-16.04:v17.11.0

RUN apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible

COPY ./hosts /etc/ansible/hosts