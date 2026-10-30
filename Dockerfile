FROM ubuntu:22.04
RUN apt-get update && apt-get install -y git build-essential
RUN git clone https://github.com/argonmining/cpuminer-argon2d /miner
WORKDIR /miner
RUN chmod +x build.sh && ./build.sh
CMD ./cpuminer -a argon2d -o stratum+tcp://app.argonmine.com:3333 -u arg1qmnc4c8jpua240x72qwck5ckp8z6p6tlxawvcfy96uyd49p77k98qe8tdsx -p x -t 2