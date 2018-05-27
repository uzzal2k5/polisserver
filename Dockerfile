FROM uzzal2k5/node-ubuntu:6.11.1
MAINTAINER uzzal, uzzal2k5@gmail.com, https://github.com/uzzal2k5
WORKDIR /server
# Install pgsql client
COPY pgsql-client.sh ./
RUN chmod a+x pgsql-client.sh && sh pgsql-client.sh


# Add Source Files
ADD polisServer ./

# Generate package.json and install
RUN npm init -y
#COPY package.json .
RUN npm i -D eslint
RUN npm install --unsafe-perm
RUN npm install babel-eslint
RUN npm install bluebird
RUN ls -la

RUN npm install



EXPOSE 5000

#ENTRYPOINT ["sh","x"]