# GLColor

![Language](https://img.shields.io/badge/language-Swift-orange.svg)
![Supported platforms](https://img.shields.io/badge/platform-iOS-lightgrey.svg)
![CocoaPods](https://img.shields.io/badge/pod-1.0-blue.svg)
[![codebeat badge](https://codebeat.co/badges/541eff3d-dcdb-451b-87ec-508aa7cc35b8)](https://codebeat.co/projects/github-com-giulio92-glcolor-master)
[![license](https://img.shields.io/github/license/giulio92/GLColor.svg)](https://github.com/giulio92/GLColor/blob/master/LICENSE.txt)

## 📄 What it is
GLColor is a drop-in, ready to use, `UIColor` subclass and extension that can be used to generate device gamut-aware (`sRGB` or `DCI-P3`) `UIColor`s or convert existing ones automatically.

As Apple Human Interface Guidelines [reports](https://developer.apple.com/ios/human-interface-guidelines/visual-design/color/) its important to use wide color on compatible displays whenever possible to ensure the best color experience in your applications. Unfortunately the regular `UIColor` uses `sRGB` as the default color space, causing `DCI-P3` compatible to render in sRBG mode all the time, instead of being able to show all the possible colors. To enable `DCI-P3` rendering you must initialize a `UIColor` using a new alternative `init` signature provided by Apple:

```
UIColor(displayP3Red:, green:, blue:, alpha:)
```

But this can lead to repetitive error-prone code and/or `if statement`s since you always have to specify which color gamut to use for every single `UIColor` in your code, based on device capabilities.

## 🛠 How to use
With GLColor you have two simple choices:
1. Use it like a `UIColor` replacement to initialize a gamut-aware color with the provided signature:
   ```
   init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat, gamut: UIDisplayGamut)
   ```
2. Use the provided `extension` with your already existing `UIColor`s:
   ```
   let color: UIColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
   color.matching(colorGamut: traitCollection.displayGamut)
   ```

Where the `gamut` and `colorGamut` parameters are your `UITraitCollection` `.displayGamut` value used to determine the correct color space to use. The `sRBG` to `DCI-P3` color space convertion will occur **only** on compatible devices.

## 🔰 Installation
**CocoaPods**
1. Add the following entry in your Podfile:
   ```
   pod 'GLColor'
   ```
2. Run `pod install`
  
**Manual installation**
1. Download the [latest](https://github.com/giulio92/GLColor/releases/latest) version
2. Copy the GLColor.swift file in your Xcode project structure

### Devices supporting `DCI-P3` color space:
📱 iOS:
- iPhone X
- iPhone 8/8 Plus
- iPhone 7/7 Plus
- iPad Pro 12.9-inch (2nd generation)
- iPad Pro 10.5-inch
- iPad Pro (9.7-inch)

🖥 macOS:
- iMac Retina 5K Late 2015+
- iMac Retina 4K Late 2015+
- iMac Pro Late 2017+
- MacBook Pro 2016+

📺 tvOS:
- Apple TV 4th gen+

### 📚 Further readings
- sRBG - https://en.wikipedia.org/wiki/SRGB
- DCI-P3 - https://en.wikipedia.org/wiki/DCI-P3
