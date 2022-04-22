import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 1 chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your favorite color?",
      "what's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("JP my first IOS App"),
          ),
          body: Column(
            children: <Widget>[
              Text('The question!'),
              RaisedButton(   
                child: Text("Answer 1"),
                onPressed: answerQuestion,
              ),
              OutlineButton(
                child: Text("Answer 2"),
                onPressed: () => print('answer 2 chosen!'),
              ),
              FloatingActionButton(
                child: Text("Answ-3"),
                onPressed: () { print("answer 3 chosen!");},
              ),
            ],
          )
          // Text("This is my default text!"),
          ),
    );
  }
}
