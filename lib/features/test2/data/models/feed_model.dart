// Created by Muhamad Fauzi Ridwan on 03/10/21.

part of '_models.dart';

class FeedModel {
  FeedModel({
    required this.assets,
    this.customerName,
    this.rating,
  });

  String? customerName;
  String assets;
  double? rating;
}
