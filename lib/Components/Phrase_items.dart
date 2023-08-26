import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learningapp/Models/NumbersModel.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Padding(
        padding: const EdgeInsets.only(left:3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(item.eng,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),),
                            Spacer(flex: 1,),
                            IconButton(onPressed: (){
                          final player =AudioPlayer();
                          player.play(AssetSource(item.sounds));
                        },
                                icon:Icon(Icons.play_arrow,
                                color: Colors.white,
                                size: 30,),),
              ],
            ),
            Text(item.jpn,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
          ],
        ),
      ),
    );
  }
}