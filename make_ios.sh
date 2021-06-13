date

echo --- Deleting previous content...
cordova plugin remove cordova-plugin-sugarizeros
#cp platforms/ios/Sugarizer/Sugarizer-Info.plist .
rm config.xml
cd www
rm -rf *
cd ..


echo --- Minimize
if [ "$1" != "full" -a "$2" != "full" ]; then
  cd ../sugarizer
  grunt -v
  cd ../Sugarizer_cordova
fi

echo --- Copying content
rsync -av --exclude-from='exclude.ios' ../sugarizer/* www
cp ../sugarizer/config.xml .
sed -i -e "s/\({\"id\": \"org.sugarlabs.TurtleBlocksJS\",.*\},\)//" www/activities.json
sed -i -e "s/\({\"id\": \"org.somosazucar.JappyActivity\",.*\},\)//" www/activities.json
#sed -i -e 's/class="offlinemode"//' www/activities/Scratch.activity/index.html
rm -rf www/activities/Jappy.activity www/activities/TurtleBlocksJS.activity

cordova platform add ios
cordova plugin add @ahovakimyan/cordova-plugin-wkwebviewxhrfix

echo --- Build Cordova debug version
cordova -d build ios 
cp ../Sugarizer/res/icon/ios/* res/icon/ios
cp ../Sugarizer/res/icon/ios/* platforms/ios/Sugarizer/Images.xcassets/AppIcon.appiconset
#cp ../Sugarizer/res/splash/ios/* platforms/ios/Sugarizer/Images.xcassets/LaunchImage.launchimage
#cp Sugarizer-Info.plist platforms/ios/Sugarizer

echo --- Use XCode to generate and copy to device

date




