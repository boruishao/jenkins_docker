FROM local-dtr.zhihuiya.com/base/java8:rel.1.0.0
MAINTAINER Datalake shao

ARG port

RUN mkdir /opt/java

COPY ./Test.class /opt/java/

WORKDIR /opt/java

RUN java Test

RUN echo "Port number: $port"

EXPOSE "$port"

CMD  tail -f 