import 'package:flutter/material.dart';
import 'package:questions/data/question_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _currentQuestionIndex = 0;

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < questions.length) {
        _currentQuestionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isFinished = _currentQuestionIndex == questions.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sorular'),
      ),
      body: Center(
        child: isFinished
            ? Text(
                'Bitti',
                style: TextStyle(fontSize: 24),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      questions[_currentQuestionIndex].question,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: questions[_currentQuestionIndex].answer.map((option) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          onPressed: _nextQuestion,
                          child: Text(option),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 50), // Buton boyutunu genişlet
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
      ),
    );
  }
}

