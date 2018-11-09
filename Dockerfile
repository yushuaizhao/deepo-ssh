FROM ufoym/deepo:all-py36-jupyter
MAINTAINER shuaizhao "zhaoyd14@outlook.com"

RUN apt-get install -y openssh-server && \
        mkdir /var/run/sshd &&\
        echo 'root:deepossh' | chpasswd

EXPOSE 22 8888 6006
CMD ["/usr/sbin/sshd", "-D"]