// Created by Muhamad Fauzi Ridwan on 22/07/21.

part of '_decorators.dart';

class BoxShapeDecorator {
  BoxShapeDecorator() {
    _shadowDecorator = BoxShadowDecorator();
    _boxDecoration = const BoxDecoration();
  }

  BoxShapeDecorator.withColor(Color color) {
    _shadowDecorator = BoxShadowDecorator();
    _boxDecoration = BoxDecoration(color: color);
  }

  BoxShadowDecorator? _shadowDecorator;
  BoxDecoration? _boxDecoration;

  BoxDecoration defaultDecoration() {
    return _boxDecoration!.copyWith(
      boxShadow: _shadowDecorator!.defaultShadow(),
      borderRadius: BorderRadius.circular(12),
    );
  }

  BoxDecoration normalDecoration() {
    return _boxDecoration!.copyWith(
      boxShadow: _shadowDecorator!.defaultShadow(),
    );
  }

  BoxDecoration whiteFullRadiusDecoration() {
    return _boxDecoration!.copyWith(
      color: OrdoColors.neutralWhite,
      boxShadow: _shadowDecorator!.defaultShadow(),
      borderRadius: BorderRadius.circular(1000),
    );
  }

  BoxDecoration circleBorderColor({Color? borderColor}) {
    return _boxDecoration!.copyWith(
      color: OrdoColors.transparent,
      borderRadius: BorderRadius.circular(1000),
      border: Border.all(color: borderColor ?? OrdoColors.disableColor),
    );
  }

  BoxDecoration roundedRectangleBorderColor(
      {Color? borderColor, double? radius}) {
    return _boxDecoration!.copyWith(
      color: OrdoColors.transparent,
      borderRadius: BorderRadius.circular(radius ?? 12.0),
      border: Border.all(color: borderColor ?? OrdoColors.disableColor),
    );
  }

  BoxDecoration roundedRectangleFullColor({double? radius}) {
    return _boxDecoration!.copyWith(
      boxShadow: _shadowDecorator!.defaultShadow(),
      borderRadius: BorderRadius.circular(radius ?? 12),
    );
  }

  BoxDecoration roundedRectangleNoShadow({double? radius, Color? color}) {
    return _boxDecoration!.copyWith(
      color: color,
      borderRadius: BorderRadius.circular(radius ?? 12),
    );
  }
}
