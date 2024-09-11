#/bin/bash

sudo apt-get update
sudo apt-get install npm -y
sudo apt-get install npm -y
sudo n stable
sudo npm i -g yarn


git clone https://github.com/CATProtocol/cat-token-box
cd cat-token-box
sudo yarn install
sudo yarn build

cd packages/cli/

cat>config.json<<EOF
{
  "network": "fractal-mainnet",
  "tracker": "http://103.106.229.164:3000",
  "dataDir": ".",
  "maxFeeRate": 3,
  "rpc": {
      "url": "http://103.106.229.164:8332",
      "username": "bitcoin",
      "password": "opcatAwesome"
  }
}
EOF


yarn cli wallet create

echo -e "\033[31m PROJECT CLI PATH: `pwd` \033[0m"


