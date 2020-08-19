git add .
git commit -m %1
git push origin master
flutter build web
cd build/web
git add .
git commit -m %1
git push origin master

