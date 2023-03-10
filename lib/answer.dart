import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: const Text(
          'Answer 1',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
