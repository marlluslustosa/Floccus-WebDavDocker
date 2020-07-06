FROM python:3-alpine

EXPOSE 8081

RUN apk add --no-cache --virtual .build-deps gcc libxslt-dev musl-dev py3-lxml py3-pip \
    && pip3 install wsgidav cheroot lxml \
    && apk del .build-deps gcc musl-dev

RUN mkdir -p /var/floccuswebdav
RUN mkdir -p /var/floccuswebdav/bookmarks

WORKDIR /var/floccuswebdav

COPY floccus.yaml .
COPY entrypoint.sh .

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]

