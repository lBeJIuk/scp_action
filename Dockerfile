FROM node:10

ADD entrypoint.sh /entrypoint.sh

RUN ls /

ENTRYPOINT ["/entrypoint.sh"]
