# GLColor

![Language](https://img.shields.io/badge/language-Swift-orange.svg)
![Supported platforms](https://img.shields.io/badge/platform-iOS_%7C%20macOS-lightgrey.svg)
[![codebeat badge](https://codebeat.co/badges/541eff3d-dcdb-451b-87ec-508aa7cc35b8)](https://codebeat.co/projects/github-com-giulio92-glcolor-master)
[![license](https://img.shields.io/github/license/giulio92/GLColor.svg)](https://github.com/giulio92/GLColor/blob/master/LICENSE.txt)

## What it is
GLColor is a drop-in, ready to use, `UIColor` subclass and extension that can be used to generate or convert device gamut-aware (`sRGB` or `DCI-P3`) `UIColor`s automatically.

As Apple Human Interface Guidelines [reports](https://developer.apple.com/ios/human-interface-guidelines/visual-design/color/) its important to use wide color on compatible displays whenever possible to ensure the best color experience in your applications.

Currently those devices support the `DCI-P3` color space:

#### iOS:
- iPhone X
- iPhone 8/8 Plus
- iPhone 7/7 Plus
- iPad Pro 12.9-inch (2nd generation)
- iPad Pro 10.5-inch
- iPad Pro (9.7-inch)

#### macOS:
- iMac Late 2015+
