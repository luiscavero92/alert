FROM luiscavero/symfony

ADD ./initServer.sh /usr/local/sbin/initServer.sh

RUN sudo chmod +x /usr/local/sbin//initServer.sh

RUN echo "[program:app-init]\ncommand=/usr/local/sbin/initServer.sh" >> /etc/supervisor/conf.d/supervisord.conf 
