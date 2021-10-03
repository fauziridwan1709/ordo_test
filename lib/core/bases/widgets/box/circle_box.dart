part of '_box.dart';

class CircleBox extends Container {
  CircleBox({
    Key? key,
    double? size,
    Color? color,
    List<BoxShadow>? boxShadow,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Widget? child,
  }) : super(
            key: key,
            width: size,
            height: size,
            padding: padding,
            margin: margin,
            child: child,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: color, boxShadow: boxShadow));
}
