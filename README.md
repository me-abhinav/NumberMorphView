# NumberMorphView

[![Build Status](https://travis-ci.org/me-abhinav/NumberMorphView.svg?branch=master)](https://travis-ci.org/me-abhinav/NumberMorphView)
[![Version](https://img.shields.io/cocoapods/v/NumberMorphView.svg?style=flat)](http://cocoapods.org/pods/NumberMorphView)
[![License](https://img.shields.io/cocoapods/l/NumberMorphView.svg?style=flat)](http://cocoapods.org/pods/NumberMorphView)
[![Platform](https://img.shields.io/cocoapods/p/NumberMorphView.svg?style=flat)](http://cocoapods.org/pods/NumberMorphView)

`NumberMorphView` a view like label for displaying numbers which animate with transition using a technique called number tweening or number morphing.

<img src="https://raw.githubusercontent.com/me-abhinav/NumberMorphView/dev/sample.gif" alt="alt text" />

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### Interface builder

1. Drag a UIView into your view controller.
2. Change the class to `NumberMorphView` in the identity inspector.
3. Change intrinsic size from default to placeholder in the size inspector.
4. Create an IBOutlet in your view controller.

Set the digit of number view as shown below:
```Swift
numberView.currentDigit = 5;
```
Animate to nextDigit as shown below.
```Swift
numberView.nextDigit = 8;
```

### From code

`NumberMorphView` can be used with or without interface builder. Usage of intrinsic content size i recommended.
Preferred aspect ratio of the view is 13 : 24

```Swift
let numberView = NumberMorphView();
numberView.fontSize = 64;
numberView.currentDigit = 5;
let preferedSize = numberView.intrinsicContentSize();
numberView.frame = CGRect(x: 100, y: 100, width: preferedSize.width, height: preferedSize.height);
self.view.addSubview(numberView);

dispatch_after(5, dispatch_get_main_queue()) {
numberView.nextDigit = 7;
}
```
### Customizing animations

- To set the animation duration:
```Swift
numberView.animationDuration = 4;
```
- To change the type of animation, set the interpolator.
```Swift
numberView.interpolator = NumberMorphView.SpringInterpolator();
```
Already available interpolators are `LinearInterpolator`, `OvershootInterpolator`, `SpringInterpolator`, `BounceInterpolator`, `AnticipateOvershootInterpolator`, and `CubicHermiteInterpolator`. Also you can add new interpolators. The interpolator class needs to conform to `InterpolatorProtocol` as shown below:
```Swift
class MyLinearInterpolator: InterpolatorProtocol {
func getInterpolation(x: CGFloat) -> CGFloat {
return x;
}
}
```

## Requirements

- iOS 8.0+
- Swift 2.0

## Installation

NumberMorphView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NumberMorphView"
```

## Author

Abhinav Chauhan

## License

NumberMorphView is available under the MIT license. See the LICENSE file for more info.
