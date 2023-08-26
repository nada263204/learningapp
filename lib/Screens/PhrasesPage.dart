



// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learningapp/Components/Phrase_items.dart';
import 'package:learningapp/Models/NumbersModel.dart';

class PhrasesPage extends StatelessWidget 

{
   PhrasesPage({super.key});
  final ItemModel one = ItemModel(image: 'assets/images/numbers/number_one.png', eng: 'one', jpn: 'ichi',sounds: 'sounds/numbers/number_one_sound.mp3');
  final List<ItemModel> number = const [
    ItemModel(image: 'assets/images/numbers/number_one.png', eng: 'One', jpn: 'ichi',sounds: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_two.png', eng: 'Two', jpn: 'ni',sounds: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_three.png', eng: 'Three', jpn: 'san',sounds:'sounds/numbers/number_three_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_four.png', eng: 'Four', jpn: 'shi / yon',sounds: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_five.png', eng: 'Five', jpn: 'go',sounds: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_six.png', eng: 'Six', jpn: 'roku',sounds: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_seven.png', eng: 'Seven', jpn: 'shichi / nana',sounds: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_eight.png', eng: 'Eight', jpn: 'hachi',sounds: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_nine.png', eng: 'Nine', jpn: 'kyu / ku',sounds: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(image: 'assets/images/numbers/number_ten.png', eng: 'Ten', jpn: 'juu',sounds: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: number.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              child: PhrasesItem(
                item:number[index],
              // color: Colors.orange,
              ),
            );
          },
        ),
      );
  }
  // List<Widget> getlist(List<Numbers> number){
  //   List<Widget>itemslist = [];
  //   for (int i=0;i<=9;i++) {
  //     itemslist.add(Item(numbers: number[i]),
  //     );
  //   }
  //   return itemslist;
  // }
}


