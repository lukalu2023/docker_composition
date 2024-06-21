yum install -y wget

yum -y install zlib zlib-devel

yum -y install bzip2 bzip2-devel

yum -y install ncurses ncurses-devel

yum -y install readline readline-devel

yum -y install openssl openssl-devel

yum -y install openssl-static

yum -y install xz lzma xz-devel

yum -y install sqlite sqlite-devel

yum -y install gdbm gdbm-devel

yum -y install tk tk-devel

yum -y install gcc

yum -y install perl

cd /usr/local/src

#wget --no-check-certificate https://www.cpan.org/src/5.0/perl-5.38.2.tar.gz

#tar -xzf perl-5.38.2.tar.gz

#cd perl-5.38.2

#./Configure -des -Dprefix=$HOME/localperl

#make && make install

cd /usr/local/src

wget  https://www.openssl.org/source/openssl-1.1.1e.tar.gz

tar -zxvf openssl-1.1.1e.tar.gz

cd openssl-1.1.1e/

./config --prefix=/usr/local/openssl no-zlib

make && make install

ln -s /usr/local/openssl/include/openssl /usr/include/openssl

ln -s /usr/local/openssl/lib/libssl.so.1.1 /usr/local/lib64/libssl.so

ln -s /usr/local/openssl/bin/openssl /usr/bin/openssl

echo "/usr/local/openssl/lib" >> /etc/ld.so.conf

ldconfig -v

cd /usr/local/src

wget https://www.python.org/ftp/python/3.12.4/Python-3.12.4.tgz

tar -zxvf Python-3.12.4.tgz

cd Python-3.12.4/

./configure --prefix=/usr/local/python3 --with-openssl=/usr/local/openssl

make && make install

ln -s /usr/local/python3/bin/python3 /usr/bin/python3

ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3
