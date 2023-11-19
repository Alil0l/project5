import 'package:flutter/material.dart';
import 'package:tune_project/models/tunes_model.dart';

class Tile extends StatelessWidget {
  const Tile({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
