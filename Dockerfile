FROM teddysun/xray

WORKDIR /etc/xray

COPY config.json /etc/xray/config.json

CMD sh -c "sed -i 's/8080/'\"$PORT\"'/g' /etc/xray/config.json && xray -config /etc/xray/config.json"
