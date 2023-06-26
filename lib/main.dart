import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1 ;
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = ['what is your name', 'where '];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Starting Flutter'),
        ),
        body: Column(children: [
          Text (questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text(questions[0]),
          ),
          ElevatedButton(
            onPressed: () => print('Answer 2 choosen'),
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {
              // asdaff
              print('Answer 3 choosen');
            },
            child: Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
