// Created by Muhamad Fauzi Ridwan on 22/07/21.

part of '_box.dart';

class AreaBox extends SizedBox {
  const AreaBox({Key? key, double? size, Widget? child})
      : super(
          key: key,
          height: size,
          width: size,
          child: child,
        );
}
