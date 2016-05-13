wget -r -p -np -k http://bellard.org/jslinux
mv ./bellard.org/jslinux ./jslinux
rm -rf ./bellard.org
cd jslinux
wget https://github.com/levskaya/jslinux-deobfuscated/blob/master/vmlinux-2.6.20.bin?raw=true
mv vmlinux-2.6.20.bin?raw=true vmlinux-2.6.20.bin
for i in $(seq -f "%09g" 0 999)
do
  wget http://bellard.org/jslinux/hda$i.bin
done
tar xvfz linuxstart-20120111.tar.gz
cd tmp/linuxstart-20120111/
make
mv linuxstart.bin ../../
cd ../../
rm -rf tmp
rm -f linuxstart-20120111.tar.gz
