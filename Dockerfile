FROM alpine:latest

EXPOSE 8081

RUN apk --no-cache add py-lxml py-pip

RUN pip install wsgidav cheroot lxml

RUN mkdir -p /var/floccuswebdav
RUN mkdir -p /var/floccuswebdav/bookmarks

WORKDIR /var/floccuswebdav

COPY floccus.yaml .
COPY entrypoint.sh .

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]

