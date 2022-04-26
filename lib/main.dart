import 'package:flutter/material.dart';




import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State <MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
    print('Answer 1 chosen!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your hobby?",
      "What's your favorite drink?"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Couples-Test"),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text("Yellow"),
                onPressed: _answerQuestion,
              ),
              OutlineButton(
                child: Text("Blue"),
                onPressed: () => print('answer 2 chosen!'),
              ),
              FloatingActionButton(
                child: Text("Red"),
                onPressed: () {
                  print("answer 3 chosen!");
                },
              ),
            ],
          )
          // Text("This is my default text!"),
          ),
    );
  }
}
