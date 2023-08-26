

import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String image;
  final String sounds;
  final String jpn;
  final String eng;

  const ItemModel({required this.image,required this.eng,required this.jpn,required this.sounds});

  Playsound(){
    final player =AudioPlayer();
                    player.play(AssetSource(sounds));
  }

}