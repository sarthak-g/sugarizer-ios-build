# Build Application for IOS

To build it, first install Cordova as described [here](https://cordova.apache.org/#getstarted) and Xcode on your machine.

Then create cordova project name "Sugarizer_cordova" at the same location where [Sugarizer](https://github.com//llaske/sugarizer) directory is present

    cordova create Sugarizer_cordova

Go inside Sugarizer_cordova directory

    cd Sugarizer_cordova/
    
Add ios platform in cordova using below command

    cordova platform add ios

Put [make_ios.sh](https://github.com/sarthak-g/sugarizer-ios-build/blob/main/make_ios.sh) and [exlude.ios](https://github.com/sarthak-g/sugarizer-ios-build/blob/main/exclude.ios) file in the directory.

Run make_ios.sh script using below command

    sh make_ios.sh
    
