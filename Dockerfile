#FROM sapk/cloud9:golang-alpine
FROM cs50/ide:latest
LABEL maintainer="Antoine GIRARD <antoine.girard@sapk.fr>"

RUN sudo rm /etc/apt/sources.list.d/* && sudo apt-get update
RUN sudo apt-get install lftp golang zsh curl sshfs -y -f

#RUN curl -sSL https://raw.githubusercontent.com/gbraad/oneliners/master/install_c9.sh | bash

#RUN wget https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js 

#RUN cd ~/c9-plugin && ./install

#RUN wget https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js 
RUN mkdir -p /home/ubuntu/.c9/plugins ; echo true
RUN sudo ln -sf /home/ubuntu/.c9 /.c9 ; echo true
RUN sudo git clone https://github.com/c9/c9.ide.mount /var/c9sdk/plugins/c9.ide.mount
RUN git clone https://github.com/c9/c9.ide.mount /home/ubuntu/.c9/plugins/c9.ide.mount 
# &&  cd ~/.c9/plugins/c9.ide.mount && npm install

ADD c9/plugins/* /var/c9sdk/plugins/
ADD c9/plugins/* /home/ubuntu/.c9/plugins/

RUN sudo chown -R 1000:1000 /.c9 ~/.c9 

#RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
#    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
#    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
#    sudo apt-get update -y && sudo apt-get install google-cloud-sdk -y

#RUN sudo cp -R plugins/* /var/c9sdk/plugins/

#RUN sudo curl https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js > /var/c9sdk/init.js
#RUN curl https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js > ~/workspace/.c9/init.js
RUN sudo wget  https://downloads.rclone.org/v1.50.0/rclone-v1.50.0-linux-amd64.deb
RUN sudo dpkg -i rclone-v1.50.0-linux-amd64.deb ; sudo apt-get install -y -f 
RUN sudo rm -fR /var/cache/apt/archives/*
ENV PATH="/home/ubuntu/.pyenv/bin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin:/home/ubuntu/workspace/bin"
RUN cd /home/ubuntu/ && git clone https://github.com/breatheco-de/c9-plugin && cd c9-plugin && bash ./install 
EXPOSE 5050 8080 8081 8082
#ENTRYPOINT ["node", "server.js", \
#            "-w", "/workspace", \
#            "--workspacetype=cs50", \
#            "--auth", ":", \
#            "--collab", \
#            "--listen", "0.0.0.0", \
#            "--port", "5050"]

#RUN rm -fR ~/.c9 && git clone 
#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash 
#ENV NVM_DIR="/root/.nvm"
#ENV PREFIX="/usr"
 
#RUN npm config delete prefix ; true
#RUN . "$NVM_DIR/nvm.sh" && nvm install-latest-npm ; nvm install 11; nvm alias default node ; true

#RUN . "$NVM_DIR/nvm.sh" && nvm use node; true

#RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm alias default node 

#RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use latest  # This loads nvm


#RUN node -v
#RUN mv /root/.c9/node_modules/nak /root/.c9/node_modules/nak.DELETE
#RUN source "$NVM_DIR/nvm.sh" ; cd ~/.c9 && find plugins -iname "package.json" -exec bash -c 'echo "${0%\/package.json}"""' {} \; | sort | uniq | parallel -j2 npm install "{}"; true

#RUN npm install -g nak c9
#RUN cd ~/.c9 && npm install -g ; npm install -g nak c9

#RUN cd ~/.c9 ;	scripts/install-sdk.sh; sh ./scripts/makestandalone.sh ; true

#RUN curl https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js > /root/.c9/init.js
#RUN git clone https://github.com/c9/c9.ide.mount ~/.c9/plugin/c9.ide.mount

#RUN curl -sSL https://raw.githubusercontent.com/gbraad/oneliners/master/install_c9.sh | bash

#RUN wget https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js 

#RUN cd ~/c9-plugin && ./install

#RUN wget https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js 


#ADD /root/data/c9/init.js /root/.c9/init.js


#CMD ["--auth","c9:c9"]

#RUN apk update && apk add tmux curl

#RUN cd ~/.c9 && git clone https://github.com/c9/core.git c9sdk ; cd c9sdk ;	scripts/install-sdk.sh; true
#RUN git clone https://github.com/c9/core.git ~/.c9 ; cd ~/.c9 ;	scripts/install-sdk.sh; sh ./scripts/makestandalone.sh ; true
#RUN curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash ; true
#RUN curl https://raw.githubusercontent.com/breatheco-de/c9-plugin/master/init.js > /root/.c9/init.js

#ENV PORT=80
#ENV IP=0.0.0.0
#ENV WORKSPACE=/workspace

