#!/usr/bin/env bash
docker build -t polis_server .
docker tag polis_server:latest  uzzal2k5/polis_server:latest
#docker run -itd --name server -p 5000:5000 -e DATABASE_URL=postgres://polis:polis@polisdb:5432/polis uzzal2k5/polis_server:latest
docker run -itd --name server -p 5000:5000 -e DATABASE_URL=postgres://polis:polis@192.168.122.1:5432/polis uzzal2k5/polis_server:latest
#docker run -it --name server -p 5000:5000 -e DATABASE_URL=postgres://polis:polis@192.168.122.1:5432/polis uzzal2k5/polis_server:latest