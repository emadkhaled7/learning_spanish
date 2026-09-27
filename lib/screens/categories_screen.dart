import 'package:flutter/material.dart';

import '../data/categories.dart';
import '../widgets/categories_app_bar_widget.dart';
import '../widgets/category_widget.dart';
import 'items_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FA),

      appBar: const CategoriesAppBarWidget(),

      body: GridView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: categories.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.95,
        ),

        itemBuilder: (context, index) {
          final category = categories[index];

          return CategoryWidget(
            category: category,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ItemsScreen(
                    category: category,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}