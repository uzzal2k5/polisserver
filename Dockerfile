FROM node:6
MAINTAINER uzzal, uzzal2k5@gmail.com
WORKDIR /polisServer
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
# nvm environment variables
ENV NVM_DIR .nvm
ENV NODE_VERSION 6.11.1
## install nvm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
RUN ls -la
## install node and npm
RUN source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default
## add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

#
ADD polisServer ./
RUN ls -la
RUN npm install
COPY pgsql-client.sh ./
RUN chmod a+x pgsql-client.sh && sh pgsql-client.sh


EXPOSE 5000

ENTRYPOINT ["sh","x"]