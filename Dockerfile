FROM node:10

ADD entrypoint.sh /entrypoint.sh

RUN ls -la /

ENTRYPOINT ["sh", "/entrypoint.sh"]
