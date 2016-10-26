# MMMFilterKit

[![CI Status](http://img.shields.io/travis/Martin Pilch/MMMFilterKit.svg?style=flat)](https://travis-ci.org/Martin Pilch/MMMFilterKit)
[![Version](https://img.shields.io/cocoapods/v/MMMFilterKit.svg?style=flat)](http://cocoapods.org/pods/MMMFilterKit)
[![License](https://img.shields.io/cocoapods/l/MMMFilterKit.svg?style=flat)](http://cocoapods.org/pods/MMMFilterKit)
[![Platform](https://img.shields.io/cocoapods/p/MMMFilterKit.svg?style=flat)](http://cocoapods.org/pods/MMMFilterKit)

MMMFilterKit simplify usage of CIFilter to just few lines of code. You can simply chain them, create your own and perform them on EAGLContext.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

MMMFilterKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MMMFilterKit'
```

Note that you'll also need to [add `use_frameworks!` to your Podfile](http://blog.cocoapods.org/CocoaPods-0.36/) if you haven't already.

## Author

Martin Pilch, martin.pilch@email.cz

## License

MMMFilterKit is available under the MIT license. See the LICENSE file for more info.



## Usage

You can simply get processed image by passing `CIImage` to any of built-in filters.

```swift
let outImg = SharpenFilters.SharpenLuminance(0.5)(inImg)
```

## Chaining

Filters can be chained together using the `|>` operator.

```swift
let randomFilter = GeneratorFilters.RandomGenerator()
let contrastFilter = ColorAdjustmentFilters.ColorControls(saturation: 0, brightness: 0, contrast: 1)
let colorFilter = ColorAdjustmentFilters.ColorMatrix(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.5)
let filters = randomFilter |> contrastFilter |> colorFilter
let outImg = filters(inImg)
```

## Processing using EAGLContext

If you need to execute filters fast, you can use `ImageProcessing` class to do it using `EAGLContext`.

```swift
let filterExposure = ColorAdjustmentFilters.ExposureAdjust(exposure: exposure)
let filterSharpen = SharpenFilters.SharpenLuminance(sharpness: sharpen)

let filters: [Filter] = [filterExposure, filterSharpen]
ImageProcessing.sharedInstance.processImage(image: image, filters: filters) { [weak self] (outputImage) in
    self?.imageView?.image = outputImage
}
```

## Thanks

Inspired by the "CIFilterKit" by [Jeff Blagdon](https://github.com/jefflovejapan).
