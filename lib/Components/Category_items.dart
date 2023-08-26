// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? text;
  Color? color;
  VoidCallback? onTap;
   Category({this.color,this.text,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                height: 56,
                width: double.infinity,
                color:color,
                child: Text(text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),),
              ),
    );
  }
}