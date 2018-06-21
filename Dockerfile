FROM shukla2009/apache-php-java
MAINTAINER Rahul Shukla <rahul@wootag.com>

RUN apt-get install -y git chkconfig
RUN cd /tmp && git clone https://github.com/awslabs/amazon-kinesis-agent.git
RUN cd /tmp/amazon-kinesis-agent && ./setup --install
RUN chkconfig aws-kinesis-agent on
RUN rm -rf /tmp/*
