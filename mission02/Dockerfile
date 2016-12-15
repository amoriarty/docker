FROM debian
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y openssh-server
RUN mkdir /var/run/sshd
RUN useradd -ms /bin/bash alegent
COPY id_rsa.pub /home/alegent/.ssh/authorized_keys
EXPOSE 42
CMD ["/usr/sbin/sshd", "-D", "-p", "42"]
