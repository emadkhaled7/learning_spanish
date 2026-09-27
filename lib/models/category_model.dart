import 'package:flutter/material.dart';

import 'item_model.dart';

class CategoryModel {
  final String name;
  final String image;
  final Color color;
  final List<ItemModel> items;

  const CategoryModel({
    required this.name,
    required this.image,
    required this.color,
    required this.items,
  });
}