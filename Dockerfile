FROM ubuntu:latest
LABEL "maintainer"="AutoBuilder24x7 <autobuilder247@gmail.com>"
LABEL "repository"="https://github.com/ansible/ansible-molecule-action"
LABEL "homepage"="https://github.com/ansible/ansible-molecule-action"

LABEL "com.github.actions.name"="ansible-molecule"
LABEL "com.github.actions.description"="Run Ansible molecule"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="gray-dark"

RUN pip install molecule docke
RUN pip install ansible
RUN pip install ansible-lint

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
