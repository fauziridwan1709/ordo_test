// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_models.dart';

class OrderModel {
  OrderModel({
    this.massUnits,
    this.massType,
    this.itemName,
    this.note,
    this.numOfItem,
    this.price,
    this.itemCode,
  });

  /// Gram or Kilogram is massUnits
  double? massUnits;
  String? massType;
  String? itemName;
  String? note;
  int? numOfItem;
  String? price;
  String? itemCode;
}
