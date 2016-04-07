# Alertable

[![CI Status](http://img.shields.io/travis/Bell App Lab/Alertable.svg?style=flat)](https://travis-ci.org/Bell App Lab/Alertable)
[![Version](https://img.shields.io/cocoapods/v/Alertable.svg?style=flat)](http://cocoapods.org/pods/Alertable)
[![License](https://img.shields.io/cocoapods/l/Alertable.svg?style=flat)](http://cocoapods.org/pods/Alertable)
[![Platform](https://img.shields.io/cocoapods/p/Alertable.svg?style=flat)](http://cocoapods.org/pods/Alertable)

## Usage

```swift
import Alertable

class ViewController: UIViewController {
    func alertSomething() {
        Alert.show("Message", "Title", self)
    }
}
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Localization

The only localizable string in this library is the default "Ok" button on alerts that have only one button. To localize it, simple add an entry to your Localizable.strings file with the following signature:

`"Ok" = "<Your Translation>";`

## Requirements

iOS 8+
Swift 2.0

## Installation

###  Cocoapods 

Alertable is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Alertable"
```

### Git Submodules

**Why submodules, you ask?**

Following [this thread](http://stackoverflow.com/questions/31080284/adding-several-pods-increases-ios-app-launch-time-by-10-seconds#31573908) and other similar to it, and given that Cocoapods only works with Swift by adding the use_frameworks! directive, there's a strong case for not bloating the app up with too many frameworks. Although git submodules are a bit trickier to work with, the burden of adding dependencies should weigh on the developer, not on the user. :wink:

To install Alertable using git submodules:

```
cd toYourProjectsFolder
git submodule add -b Submodule --name Alertable https://github.com/BellAppLab/Alertable.git
```

Navigate to the new Alertable folder and drag the Pods folder to your Xcode project.

## Author

Bell App Lab, apps@bellapplab.com

## License

Alertable is available under the MIT license. See the LICENSE file for more info.
