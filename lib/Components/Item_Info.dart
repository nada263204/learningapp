import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learningapp/Models/NumbersModel.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.numbers});
  final ItemModel numbers;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              child: Text(numbers.eng,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Text(numbers.jpn,style: TextStyle(fontSize: 18,color: Colors.white),),
                      Spacer(flex: 1,),
                      IconButton(onPressed: (){
                    final player =AudioPlayer();
                    player.play(AssetSource(numbers.sounds));
                  },
                          icon:Icon(Icons.play_arrow,
                          color: Colors.white,
                          size: 30,),)
      ],
    );
  }
}

