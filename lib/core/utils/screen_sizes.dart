import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ScreenSize { mobile, tablet, computer }

ScreenSize get currentScreenSize {
  if (1.sw < 1000) {
    return ScreenSize.mobile;
  } else if (1.sw > 1000 && 1.sw <= 1400) {
    return ScreenSize.tablet;
  } else {
    return ScreenSize.computer;
  }
}
