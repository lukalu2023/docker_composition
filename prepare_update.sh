cd /usr/local/src

rm -fr Python-3.12.4

tar -xf Python-3.12.4.tgz

cd Python-3.12.4

./configure --prefix=/usr/local/python3 --with-openssl=/usr/local/openssl

make && make install


