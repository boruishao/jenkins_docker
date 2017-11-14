FROM local-dtr.zhihuiya.com/base/java8:rel.1.0.0
MAINTAINER Datalake shao

RUN mkdir /opt/java

COPY ./Test.class /opt/java/

WORKDIR /opt/java

RUN java Test

EXPOSE 8080

CMD  tail -f 