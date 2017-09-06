Xvfb -ac :90 &

ip addr

cd /project/webscreen

git pull origin master
npm update

nodejs index.js