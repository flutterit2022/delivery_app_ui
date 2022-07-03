# delivery_app_ui

A new Flutter project.

## Getting Started

For Android:
1. Go to android/app/src/main/AndroidManifest.xml
2. Add following in 
```
<application>
  <meta-data android:name="com.google.android.geo.API_KEY"
                android:value="your_api_key_here" />  //add your api key here for google maps
 </application>
 ```
 
 For IOS:
 1. Go to ios/Runner/AppDelegate.swift
2. Add following in 
```
import GoogleMaps // add this in the import section
GMSServices.provideAPIKey("your_api_key_here") // add this inside the main code of the AppDelegate class
```
