// flutter is all about widgets
// the first widget is the root widget means that entire app is a widget
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

// material.dart has a base class which could be used to make the widgets
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //const MyApp({super.key});
  static const questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': ['Black', 'Red', 'Green', 'Blue'],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['Dog', 'Cat', 'Tiger', 'Cow'],
    },
    {
      'questionText': "What's your favorite game?",
      'answers': ['Cricket', 'Football', 'Basketball', 'Tennis'],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        // dart also provide us with list
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : const Center(
                child: Text(
                  "Quiz completed",
                  style: TextStyle(fontSize: 60),
                ),
              ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
