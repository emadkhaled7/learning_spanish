import 'package:flutter/material.dart';

class CategoriesAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CategoriesAppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF202020),
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '🇪🇸',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            'Hola Español',
            style: TextStyle(
              fontFamily: 'Heylowitch',
              fontSize: 29,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            '🇪🇸',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}