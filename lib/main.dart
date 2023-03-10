// flutter is all about widgets
// the first widget is the root widget means that entire app is a widget
import 'package:flutter/material.dart';

import './question.dart';

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

  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        // dart also provide us with list
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print("Answer 2 chosen"),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print("Answer 3 chosen");
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
