// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learningapp/Components/Category_items.dart';
import 'package:learningapp/Screens/Family_Members.dart';
import 'package:learningapp/Screens/NumbersPage.dart';
import 'package:learningapp/Screens/PhrasesPage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('toku'),
          backgroundColor: Color(0xFF46322B),
        ),
        body: Column(
          children: [
            Category(text: 'Numbers', color: Colors.amber,
            onTap: (){Navigator.push(context, MaterialPageRoute( builder: (BuildContext context) {return NumbersPage();}));},),
            Category(text: 'Family Members',color: Colors.green,
            onTap:(){Navigator.push(context, MaterialPageRoute( builder: (BuildContext context) {return FamilyMembersPage();}));},),
            Category(text: 'Colors', color: Colors.indigo,
            onTap: (){},),
            Category(text: 'Phrases',color: Colors.orange,
            onTap: (){Navigator.push(context, MaterialPageRoute( builder: (BuildContext context) {return PhrasesPage();}));},),
          ],
        ),
      );
  }
}

