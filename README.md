# PostTime

The PostTime object can tell you how long ago from your given timestamp.

[Tutuorial of how I created PostTime with TDD](https://medium.com/@ji3g4kami/test-driven-development-in-swift-a0167b314da0)

## Installation

To integrate PostTime into your Xcode project using CocoaPods, specify it in your `Podfile`:
```ruby
source 'https://github.com/CocoaPods/Specs'

use_frameworks!

target '<Your Target Name>' do
    pod 'PostTime'
end
```
Then, run the following command:
```
$ pod install
```

## Usage
You'll need to ``import PostTime`` in swift files.

### deviceID
This deviceID comes from keychain.

```swift
let postTime = PostTime(postDate: Date().timeIntervalSince1970 - 5.0)
print(postTime.howLongAgo())
// => 5 sec.
```

## License

Copyright 2018 David Wu