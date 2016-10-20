# Alertable

A simplified way of presenting alerts on iOS with Swift.

_v0.4.0_

## Usage

```swift
class ViewController: UIViewController {
    func alertSomething() {
        Alert.show("Message", "Title", self)
    }
}
```

## Localization

The only localizable string in this library is the default "Ok" button on alerts that have only one button. To localize it, simple add an entry to your Localizable.strings file with the following signature:

`"Ok" = "<Your Translation>";`

## Requirements

* iOS 8+
* Swift 3.0

## Installation

### Cocoapods

Because of [this](http://stackoverflow.com/questions/39637123/cocoapods-app-xcworkspace-does-not-exists), I've dropped support for Cocoapods on this repo. I cannot have production code rely on a dependency manager that breaks this badly. 

### Git Submodules

**Why submodules, you ask?**

Following [this thread](http://stackoverflow.com/questions/31080284/adding-several-pods-increases-ios-app-launch-time-by-10-seconds#31573908) and other similar to it, and given that Cocoapods only works with Swift by adding the use_frameworks! directive, there's a strong case for not bloating the app up with too many frameworks. Although git submodules are a bit trickier to work with, the burden of adding dependencies should weigh on the developer, not on the user. :wink:

To install Alertable using git submodules:

```
cd toYourProjectsFolder
git submodule add -b submodule --name Alertable https://github.com/BellAppLab/Alertable.git
```

**Swift 2 support**

```
git submodule add -b swift2 --name Alertable https://github.com/BellAppLab/Alertable.git
```

Then, navigate to the new Alertable folder and drag the `Source` folder into your Xcode project.

## Author

Bell App Lab, apps@bellapplab.com

## License

Alertable is available under the MIT license. See the LICENSE file for more info.
