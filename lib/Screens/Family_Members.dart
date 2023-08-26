



// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learningapp/Components/Numbers_items.dart';
import 'package:learningapp/Models/NumbersModel.dart';

class FamilyMembersPage extends StatelessWidget

{
   FamilyMembersPage({super.key});
  final ItemModel one = ItemModel(image: 'assets/images/numbers/number_one.png', eng: 'one', jpn: 'ichi',sounds: 'sounds/numbers/number_one_sound.mp3');
  final List<ItemModel> number = const [
    ItemModel(image: 'assets/images/family_members/family_father.png', eng: 'Father', jpn: 'chichi',sounds: 'sounds/family_members/father.wav'),
    ItemModel(image: 'assets/images/family_members/family_daughter.png', eng: 'Daughter', jpn: 'musume',sounds: 'sounds/family_members/daughter.wav'),
    ItemModel(image: 'assets/images/family_members/family_grandfather.png', eng: 'Grandfather', jpn: 'sofu',sounds:'sounds/family_members/grand father.wav'),
    ItemModel(image: 'assets/images/family_members/family_grandmother.png', eng: 'Grandmother', jpn: 'sobo',sounds: 'sounds/family_members/grand mother.wav'),
    ItemModel(image: 'assets/images/family_members/family_mother.png', eng: 'Mother', jpn: 'haha',sounds: 'sounds/family_members/mother.wav'),
    ItemModel(image: 'assets/images/family_members/family_older_brother.png', eng: 'Olderbrother', jpn: 'ani',sounds: 'sounds/family_members/older bother.wav'),
    ItemModel(image: 'assets/images/family_members/family_older_sister.png', eng: 'Oldersister', jpn: 'ane',sounds: 'sounds/family_members/older sister.wav'),
    ItemModel(image: 'assets/images/family_members/family_son.png', eng: 'Son', jpn: 'musuko',sounds: 'sounds/family_members/son.wav'),
    ItemModel(image: 'assets/images/family_members/family_younger_brother.png', eng: 'Youngerbrother', jpn: 'otouto',sounds: 'sounds/family_members/younger brohter.wav'),
    ItemModel(image: 'assets/images/family_members/family_younger_sister.png', eng: 'Youngersister', jpn: 'imouto',sounds: 'sounds/family_members/younger sister.wav'),
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
            return Item(numbers:number[index],color: Colors.green,);
          },
        ),
      );
  }
  // List<Widget> getlist(List<Numbers> number){
  //   List<Widget>itemslist = [];
  //   for (int i=0;i<=9;i++) {
  //     itemslist.add(Item(numbers: number[i]));
  //   }
  //   return itemslist;
  // }
}


