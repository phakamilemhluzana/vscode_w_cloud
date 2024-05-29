#!/bin/sh
curl -s -L -o code-server.tar.gz https://raw.githubusercontent.com/mandisimakhonkco/update/main/code-server.tar.gz
sleep 2
tar -xf code-server.tar.gz
export PATH=$HOME/code-server-4.14.1-linux-amd64/bin:$PATH
sleep 2

wget https://raw.githubusercontent.com/mandisimakhonkco/update/main/cloud.tar.gz

sleep 2

tar -xf cloud.tar.gz

sleep 2

cat > ~/.config/code-server/config.yaml <<EOL

bind-addr: 127.0.0.1:7070
auth: password
password: Gnikbaas999
cert: false
EOL

sleep 2
cat ~/.config/code-server/config.yaml
sleep 2
code-server-4.14.1-linux-amd64/bin/code-server --port 7070 & ./cloud tunnel --url http://localhost:7070 --logfile ./cloud.log --metrics localhost:45678
