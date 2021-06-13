# Build Application for IOS

To build Sugarizer for ios, first install Cordova as described [here](https://cordova.apache.org/#getstarted) and Xcode on your machine.

Then create cordova project name "Sugarizer_cordova" at the same location where [Sugarizer](https://github.com//llaske/sugarizer) directory is present

    cordova create Sugarizer_cordova

Go inside Sugarizer_cordova directory

    cd Sugarizer_cordova/

Put [make_ios.sh](https://github.com/sarthak-g/sugarizer-ios-build/blob/main/make_ios.sh) and [exlude.ios](https://github.com/sarthak-g/sugarizer-ios-build/blob/main/exclude.ios) file in the directory.

Run make_ios.sh script using below command

    sh make_ios.sh
    
After execution of script, go to "platforms/ios/" directory and open Sugarizer.xcworkspace file in Xcode by double clicking it.

Click on "Sugarizer" title and then click on "build settings"

<buildSetting_1>

Scroll down you'll find "Swift Compiler - Language" section. In this section, select "Swift Language Version" as 3 or above

<buildSetting_2>

Then go to "Sugarizer/plugins/" directory and open "CDVFileTransfer.m" file. Comment line 107-110 and save the file.

<comment>
    
Select the simulator device and press Build button.
    
<device>
