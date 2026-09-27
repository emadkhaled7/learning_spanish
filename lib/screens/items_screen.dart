import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../widgets/item_widget.dart';

class ItemsScreen extends StatefulWidget {
  final CategoryModel category;

  const ItemsScreen({
    super.key,
    required this.category,
  });

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> _playAudio(String sound) async {
    await _audioPlayer.stop();

    await _audioPlayer.play(
      AssetSource(sound),
    );
  }

  Future<void> _pauseAudio() async {
    await _audioPlayer.pause();
  }

  Future<void> _stopAudio() async {
    await _audioPlayer.stop();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final category = widget.category;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FA),

      appBar: AppBar(
        backgroundColor: category.color,
        foregroundColor: Colors.white,
        elevation: 0,

        title: Text(
          category.name,
          style: const TextStyle(
            fontFamily: 'Facebook',
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),

        itemCount: category.items.length,

        itemBuilder: (context, index) {
          final item = category.items[index];

          return ItemWidget(
            item: item,

            onPlay: () {
              _playAudio(item.sound);
            },

            onPause: _pauseAudio,

            onStop: _stopAudio,
          );
        },
      ),
    );
  }
}