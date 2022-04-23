import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State <MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    
    print('Answer 1 chosen!');
    print(questionIndex);
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
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text("Yellow"),
                onPressed: answerQuestion,
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
