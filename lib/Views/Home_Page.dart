import 'package:flutter/material.dart';
import 'package:tune_project/models/tunes_model.dart';

import '../Widgets/container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.green, sound: 'note1.wav'),
    TuneModel(color: Colors.blue, sound: 'note2.wav'),
    TuneModel(color: Colors.red, sound: 'note3.wav'),
    TuneModel(color: Colors.yellow, sound: 'note4.wav'),
    TuneModel(color: Colors.purple, sound: 'note5.wav'),
    TuneModel(color: Colors.orange, sound: 'note6.wav'),
    TuneModel(color: Colors.pink, sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade500,
        elevation: 0,
        centerTitle: true,
        title: Text('Tune App'),
      ),
      body: Column(
        children: tunes.map((e) => Tile(tune: e)).toList(),
      ),
    );
  }
}
//   List<Tile> getTuneColor() {
//     List<Tile> items = [];
//     for (var color in tuneColors) {
//       items.add(Tile(color: color));
//     }
//     return items;
//   }
// }
