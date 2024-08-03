# Flutter Draw

A beautiful drawing view for a your flutter application with single line of code.

To start with this, we need to simply add the dependencies in the gradle file of our app module like this

Don't forget to star ⭐ the repo it motivates me to share more open source

### Created & Maintained By

[Sanskar Tiwari](https://github.com/theindianappguy) ([@indianappguy](https://twitter.com/indianappguy)) ([YouTube](https://www.youtube.com/c/SanskarTiwari))

> If you found this project helpful or you learned something from the source code and want to thank me,
> consider checking out what i am building at [MagicSlides.app](https://www.magicslides.app), [MagicForm.app](https://www.magicform.app) & [SheetAI.app](https://www.sheetai.app)


## Installation

First, add `flutter_draw:` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

Import

```dart
import 'package:flutter_draw/flutter_draw.dart';
```

### iOS

Add the following keys to your _Info.plist_ file, located in `<project root>/ios/Runner/Info.plist`:

* `NSPhotoLibraryUsageDescription` - describe why your app needs permission for the photo library. This is called _Privacy - Photo Library Usage Description_ in the visual editor.
* `NSCameraUsageDescription` - describe why your app needs access to the camera. This is called _Privacy - Camera Usage Description_ in the visual editor.
* `NSMicrophoneUsageDescription` - describe why your app needs access to the microphone, if you intend to record videos. This is called _Privacy - Microphone Usage Description_ in the visual editor.

Or in text format add the key:

``` xml
<key>NSPhotoLibraryUsageDescription</key>
<string>Used to demonstrate image picker plugin</string>
<key>NSCameraUsageDescription</key>
<string>Used to demonstrate image picker plugin</string>
<key>NSMicrophoneUsageDescription</key>
<string>Used to capture audio for image picker plugin</string>
```

### Android

No configuration required - the plugin should work out of the box.

![draw](https://user-images.githubusercontent.com/55942632/78506727-518b3280-7799-11ea-8a90-a19afc941b9e.gif)

Add this function to Your StateFull Widget Check the [Example]()

```dart
 File _drawImage;
```

```dart
 Future<void> getDrawing()  {
    final getDraw =   Navigator.push(context, MaterialPageRoute(
        builder: (context){
          return HomePage();
        }
    )).then((getDraw){
      if(getDraw != null){
        setState(() {
          _drawImage =  getDraw;
        });
      }
    }).catchError((er){print(er);});

  }
```

### Developed & Maintained By

[Sanskar Tiwari](https://www.linkedin.com/in/lamsanskar/) ([@theindianappguy](https://twitter.com/Theindianappguy)) ([YouTube](https://www.youtube.com/c/SanskarTiwari))

> 
>
> - [PayPal](https://paypal.me/iamsanskartiwari)

### License

    Copyright 2020 Sanskar Tiwari

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

## Special Thanks
- [EPNW](https://github.com/epnw/painter)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
