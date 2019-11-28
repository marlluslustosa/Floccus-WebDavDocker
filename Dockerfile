FROM alpine:latest

EXPOSE 8081

RUN apk --no-cache add py-lxml py-pip

RUN pip install wsgidav cheroot lxml

RUN mkdir -p /var/lofloccus
RUN mkdir -p /var/lofloccus/bookmarks

WORKDIR /var/lofloccus

COPY floccus.yaml .
COPY entrypoint.sh .

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
