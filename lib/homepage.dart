import 'package:flutter/material.dart';
import 'package:questions/questions.dart';

class Homepage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Sorulara Başla'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => QuestionsScreen()),
            );
          },
        ),
      ),
    );
  }

}