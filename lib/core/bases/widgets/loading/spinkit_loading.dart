// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_loading.dart';

///todo create spinkit enum
enum SpinkitType {
  fadingCube,
  pulse,
}

class SpinkitLoading extends StatelessWidget {
  const SpinkitLoading({
    Key? key,
    this.spinkitType = SpinkitType.pulse,
    this.color,
  }) : super(key: key);

  final SpinkitType spinkitType;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _mapSpinkitType(spinkitType),
    );
  }

  Widget _mapSpinkitType(SpinkitType type) {
    const size = 40.0;
    const duration = Duration(seconds: 1);
    switch (type) {
      case SpinkitType.pulse:
        return SpinKitPulse(
          size: size,
          color: color ?? OrdoColors.primaryColor,
        );
      default:
        return SpinKitFadingCube(
          duration: duration,
          size: size,
          color: color ?? Colors.white,
        );
    }
  }
}
