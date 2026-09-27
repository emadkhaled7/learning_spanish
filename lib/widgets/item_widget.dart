import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  final VoidCallback onPlay;
  final VoidCallback onPause;
  final VoidCallback onStop;

  const ItemWidget({
    super.key,
    required this.item,
    required this.onPlay,
    required this.onPause,
    required this.onStop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: const Color(0xFFF1EEF5),
            child: ClipOval(
              child: Image.asset(
                item.image,
                width: 68,
                height: 68,
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(width: 13),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.spanishName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'Facebook',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF25212A),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  item.englishName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Facebook',
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 4),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _AudioButton(
                icon: Icons.play_arrow_rounded,
                onPressed: onPlay,
              ),
              _AudioButton(
                icon: Icons.pause_rounded,
                onPressed: onPause,
              ),
              _AudioButton(
                icon: Icons.stop_rounded,
                onPressed: onStop,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AudioButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _AudioButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minWidth: 32,
        minHeight: 32,
      ),
      icon: Icon(
        icon,
        size: 23,
        color: const Color(0xFF7B2CBF),
      ),
    );
  }
}