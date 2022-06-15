# RCSceneBaseKit

[![CI Status](https://img.shields.io/travis/彭蕾/RCSceneBaseKit.svg?style=flat)](https://travis-ci.org/彭蕾/RCSceneBaseKit)
[![Version](https://img.shields.io/cocoapods/v/RCSceneBaseKit.svg?style=flat)](https://cocoapods.org/pods/RCSceneBaseKit)
[![License](https://img.shields.io/cocoapods/l/RCSceneBaseKit.svg?style=flat)](https://cocoapods.org/pods/RCSceneBaseKit)
[![Platform](https://img.shields.io/cocoapods/p/RCSceneBaseKit.svg?style=flat)](https://cocoapods.org/pods/RCSceneBaseKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Minimum iOS Target：iOS 11.0

## Installation

RCSceneBaseKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RCSceneBaseKit'
```

## Usage

```Objective-c
    // 设置UI设计图比例，默认372屏
    [RCSUIAdaptor designWithSize:CGSizeMake(kScreen_WIDTH, kScreen_HEIGHT)];
    
    // 获取组件 xcassets 图片
    [UIImage rcs_imageNamed:@"imageName" bundle:@"RCScenceLoginKit"];
    
    // 定时器
    [[RCSCountdown new] startCountdownWithTime:60 countdownCallBack:^(int timeStr) {
        NSLog(@"time: %d", timeStr);
    } countdownFinishCallBack:^{
        NSLog(@"coutdown finished");
    }];

```

## Author

彭蕾, penglei1@rongcloud.cn

## License

RCSceneBaseKit is available under the MIT license. See the LICENSE file for more info.
