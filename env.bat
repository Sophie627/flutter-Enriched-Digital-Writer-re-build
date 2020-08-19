git add .
git commit -m %1
git push origin master
start /B /wait flutter build web
echo 1
cd /D build/web
git add .
git commit -m %1
git push origin master
cd /D ../..

