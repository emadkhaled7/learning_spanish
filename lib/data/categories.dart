import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'animals.dart';
import 'colors.dart';
import 'family_members.dart';
import 'food_drinks.dart';
import 'numbers.dart';

const List<CategoryModel> categories = [
  CategoryModel(
    name: 'Animales',
    image: 'assets/image/animals/icons8-bear-100.png',
    color: Color(0xFF795548),
    items: animals,
  ),
  CategoryModel(
    name: 'Colores',
    image: 'assets/image/colors/colors.png',
    color: Color(0xFF9C27B0),
    items: colors,
  ),
  CategoryModel(
    name: 'Familia',
    image: 'assets/image/family/family.png',
    color: Color(0xFF2196F3),
    items: familyMembers,
  ),
  CategoryModel(
    name: 'Comida y Bebidas',
    image: 'assets/image/food_drinks/icons8-hamburger-100.png',
    color: Color(0xFF4CAF50),
    items: foodDrinks,
  ),
  CategoryModel(
    name: 'Números',
    image: 'assets/image/numbers/icons8-number-1-100.png',
    color: Color(0xFF009688),
    items: numbers,
  ),
];