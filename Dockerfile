FROM uzzal2k5/node-ubuntu:8.11.1
MAINTAINER uzzal, uzzal2k5@gmail.com, https://github.com/uzzal2k5
WORKDIR /server
# Install pgsql client
COPY pgsql-client.sh ./
RUN chmod a+x pgsql-client.sh && sh pgsql-client.sh

# Add Source Files
ADD polisServer ./

# Generate package.json and install
RUN npm init -y
RUN npm i -D eslint
RUN npm install --unsafe-perm

RUN ls -la

RUN npm install



EXPOSE 5000

#ENTRYPOINT ["sh","x"]