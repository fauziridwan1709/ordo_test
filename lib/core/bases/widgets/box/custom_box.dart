part of '_box.dart';

class CustomBox extends Container {
  CustomBox({
    Key? key,
    double? width,
    double? height,
    Widget? child,
    Color? color,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    EdgeInsetsGeometry? margin,
    BorderRadius? radius,
    BoxBorder? border,
    BoxShape shape = BoxShape.rectangle,
    VoidCallback? onTap,
    AlignmentGeometry? align,
    List<BoxShadow>? boxShadow,
  }) : super(
            key: key,
            width: width,
            height: height,
            margin: margin,
            alignment: align,
            decoration: BoxDecoration(
                shape: shape,
                color: color,
                borderRadius: radius,
                boxShadow: boxShadow,
                border: border),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                key: key,
                onTap: onTap,
                child: Padding(
                  padding: padding,
                  child: child,
                ),
              ),
            ));
}
