FROM jenkins/jenkins:latest

USER root

# Install Python 3 and virtualenv
RUN apt-get update && \
    apt-get install -y python3 python3-venv

# Create a virtual environment and install Ansible
RUN python3 -m venv /opt/ansible-venv && \
    /opt/ansible-venv/bin/pip install --upgrade pip && \
    /opt/ansible-venv/bin/pip install ansible

# Add the virtual environment to the PATH
ENV PATH="/opt/ansible-venv/bin:$PATH"

USER jenkins