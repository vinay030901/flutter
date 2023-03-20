// flutter is all about widgets
// the first widget is the root widget means that entire app is a widget
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}
//void main() => runApp(MyApp());

// material.dart has a base class which could be used to make the widgets
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //const MyApp({super.key});
  static const _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 3},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Cow', 'score': 1},
      ],
    },
    {
      'questionText': "What's your favorite game?",
      'answers': [
        {'text': 'Tennis', 'score': 5},
        {'text': 'Cricket', 'score': 3},
        {'text': 'Basketball', 'score': 10},
        {'text': 'Football', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : const Result(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
