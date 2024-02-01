#! /bin/bash
apt update
apt upgrade -y
apt update
apt install curl -y
apt install git -y
apt install python3 -y
apt install python3-pip -y
export PATH=$PATH:/usr/local/go/bin
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install github.com/ffuf/ffuf/v2@latest
GO111MODULE=on go install github.com/jaeles-project/gospider@latest
go install github.com/BishopFox/jsluice/cmd/jsluice@latest
go install -v github.com/tomnomnom/anew@latest
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
git clone https://github.com/sh1yo/x8
cd x8
cargo build --release
cp ./target/release/x8 /usr/local/bin
cd ~/
git clone https://github.com/blechschmidt/massdns.git
cd ~/massdns
make
cd ..
mv ~/massdns/bin/massdns /bin
git clone https://github.com/ProjectAnte/dnsgen
cd dnsgen
pip3 install -r requirements.txt
python3 setup.py install
cd ..
mv ~/go/bin/* /bin
