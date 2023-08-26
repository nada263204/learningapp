// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learningapp/Components/Item_Info.dart';
import 'package:learningapp/Models/NumbersModel.dart';



class Item extends StatelessWidget {
  const Item({Key? key, required this.numbers,required this.color});
  final ItemModel numbers;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 100,
            color: color,
            child:Row(
              children: [
                Container(
                  height: 100,
                  color: Colors.white,
                  child: Image.asset(numbers.image)),
                  Expanded(child: ItemInfo(numbers: numbers)),

              ])
            );

          }
       }

