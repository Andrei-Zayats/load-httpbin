FROM alpine:latest
 
# install java
RUN apk add openjdk17

# install jmeter
RUN wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.5.tgz
RUN tar -xvzf apache-jmeter-5.5.tgz
RUN rm apache-jmeter-5.5.tgz
RUN mv apache-jmeter-5.5 /jmeter
RUN mkdir /jmeter/report
ENV JMETER_HOME /jmeter

# add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
COPY ./test/api-test.jmx /jmeter/test/api-test.jmx
COPY ./start.sh /jmeter
RUN chmod +x /jmeter/start.sh

ENTRYPOINT  ["/bin/sh", "/jmeter/start.sh"]