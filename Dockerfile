FROM centos
RUN yum install -y which

COPY Dockerfile /Dockerfile
ADD https://raw.githubusercontent.com/ifriedman/ciscocd/master/my-playbook.yml /my-playbook.yml
ADD http://apache.spd.co.il/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz /apache-maven-3.3.9-bin.tar.gz
RUN tar zxvf apache-maven-3.3.9-bin.tar.gz 
RUN rm -f apache-maven-3.3.9-bin.tar.gz


