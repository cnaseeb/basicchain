
FROM node:4.6

RUN mkdir /basicchain
ADD package.json /basicchain/
ADD main.java /basicchain/

RUN cd /basicchain && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /basicchain && npm install && PEERS=$PEERS npm start
