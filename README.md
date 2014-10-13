For my thesis I designed a social wrapper for Apple's Core Bluetooth Framework. I wanted to abstract away the complication of user discovery for iPhone apps. 

Classes
* SBUserBroadcast - For sharing a users information
* SBUserDiscovery - For recieving nearby users information

Key Features
* Set up Social Bluetooth in 10 lines of code
* Easy installation using CocoaPods
* Optional background discovery support
* Handles construction and deconstruction of CBPeripheralManager, CBMutableService, CBMutableCharacteristic, and CBCentralManager

Next Steps
* Update for iOS 8
* Add test suite
* Bug fixes for background discovery and broadcasting
* Submit pull request to Cocoapods
