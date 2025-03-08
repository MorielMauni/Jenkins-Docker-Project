FROM almalinux:9.2

# Install necessary packages
RUN yum -y install openssh-server passwd curl --allowerasing

# Create a user and set up SSH
RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

# Copy the SSH key
COPY centos/remote-key /home/remote_user/.ssh/authorized_keys

# Set permissions for the SSH key
RUN chown remote_user:remote_user -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

# Generate SSH host keys
RUN ssh-keygen -A

# Install MySQL
RUN yum -y install mysql

# Install Python3 and CA certificates correctly
RUN yum -y install python3 ca-certificates && update-ca-trust

# Install AWS CLI using dnf
RUN dnf -y install awscli

CMD [ "/usr/sbin/sshd", "-D" ]