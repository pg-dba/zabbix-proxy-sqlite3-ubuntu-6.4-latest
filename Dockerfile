FROM zabbix/zabbix-proxy-sqlite3:ubuntu-6.4.14
#FROM zabbix/zabbix-proxy-sqlite3:ubuntu-6.4-latest

USER zabbix

RUN echo 'alias nocomments="sed -e :a -re '"'"'s/<\!--.*?-->//g;/<\!--/N;//ba'"'"' | sed -e :a -re '"'"'s/\/\*.*?\*\///g;/\/\*/N;//ba'"'"' | grep -v -P '"'"'^\s*(#|;|--|//|$)'"'"'"' >> ~/.bashrc

WORKDIR /etc/zabbix
