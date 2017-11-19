FROM alpine:3.6

ENV PLANTUML_VERSION 1.2017.18
ENV LANG en_US.UTF-8

COPY entrypoint.sh /root/

RUN apk --no-cache add openjdk8 curl \
   && curl -LS https://github.com/openfaas/faas/releases/download/0.5.6-alpha/fwatchdog > /usr/bin/fwatchdog \
   && chmod +x /usr/bin/fwatchdog \
   && chmod +x /root/entrypoint.sh


#plantuml
RUN apk add --no-cache graphviz ttf-droid ttf-droid-nonlatin \
    && mkdir /app \
    && curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /app/plantuml.jar \
    && apk del curl

WORKDIR /root/

ENV fprocess="./entrypoint.sh"

CMD ["fwatchdog"]
