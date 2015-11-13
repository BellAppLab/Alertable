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

Alertable is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Alertable"
```

## Author

Bell App Lab, apps@bellapplab.com

## License

Alertable is available under the MIT license. See the LICENSE file for more info.
