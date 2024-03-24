import 'package:flutter/material.dart';
import 'package:questions/data/question_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;
  int _incorrectAnswers = 0;

  void _answerQuestion(int selectedIndex) {
    final isCorrect = selectedIndex == questions[_currentQuestionIndex].correctAnswerIndex;

    if (isCorrect) {
      _correctAnswers++;
    } else {
      _incorrectAnswers++;
    }

    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final isFinished = (_correctAnswers + _incorrectAnswers) == questions.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sorular'),
      ),
      body: Center(
        child: isFinished
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bitti',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Doğru Cevaplar: $_correctAnswers',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  Text(
                    'Yanlış Cevaplar: $_incorrectAnswers',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ],
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
                  ...questions[_currentQuestionIndex].answer.asMap().entries.map((option) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ElevatedButton(
                        onPressed: () => _answerQuestion(option.key),
                        child: Text(option.value),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
      ),
    );
  }
}

