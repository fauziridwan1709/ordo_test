// Created by Muhamad Fauzi Ridwan on 7/17/21.

part of '_decorators.dart';

class BoxShadowDecorator {
  BoxShadowDecorator() {
    shadow = <BoxShadow>[];
  }

  List<BoxShadow>? shadow;

  List<BoxShadow> defaultShadow() {
    shadow!.add(BoxShadow(
        color: OrdoColors.shadowColor, spreadRadius: 2, blurRadius: 2));
    return shadow!;
  }

  List<BoxShadow> neoMorphColor() {
    //todo add to list shadow
    return shadow!;
  }
}
