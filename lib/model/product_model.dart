import 'dart:io';

import 'package:flutter/material.dart';

class ProductModel {
  String? name;
  String? image;
  String? details;
  double? price;
  dynamic icon;
  int? id;

  ProductModel(
      {this.details, this.price, this.image, this.name, this.icon, this.id});
}
