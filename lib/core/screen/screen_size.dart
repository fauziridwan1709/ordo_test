part of '_screen.dart';

class Screen {
  static double? w;
  static double? h;
  static double? hPad;
  static double? vPad;
  static double? hMar;
  static double? vMar;

  void init(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      w = MediaQuery.of(context).size.height;
      h = MediaQuery.of(context).size.width;
      hPad = w! * .05;
      vPad = w! * .05;
      hMar = w! * .05;
      vMar = w! * .03;
    } else {
      w = MediaQuery.of(context).size.width;
      h = MediaQuery.of(context).size.height;
      final scale = MediaQuery.of(context).textScaleFactor;
      final pixRatio = MediaQuery.of(context).devicePixelRatio;
      Logger().d('''
width $w, height: $h, ratio: ${w! / h!}, scale: $scale, pixRatio: $pixRatio''');
      hPad = w! * .05;
      vPad = w! * .05;
      hMar = w! * .05;
      vMar = w! * .03;
    }
  }

  static double totalScale() {
    final getContext = nav.navigatorKey.currentContext;
    final mediaQuery = MediaQuery.of(getContext!);
    final textScale = 1.0 / mediaQuery.textScaleFactor;
    final screenScale = 3.0 / mediaQuery.devicePixelRatio;
    return textScale * screenScale;
  }

  static double ratio() {
    final getContext = nav.navigatorKey.currentContext;
    final mediaQuery = MediaQuery.of(getContext!);
    final screenScaleRatio = 3.0 / mediaQuery.devicePixelRatio;
    return screenScaleRatio;
  }
}
