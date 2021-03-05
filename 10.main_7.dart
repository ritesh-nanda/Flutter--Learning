import "package: flutter/material.dart";

import "./Question.dart";   // './' indicates same file location as of main

void main() {
    runapp(MyApp());
}

class MyApp extends StatelfulWidget {
    @override
    State<StatefulWidget> createState() {
        // TODO: implement createState
        return MyAppState();
    }
}

class MyAppState extends State<MyApp> {         // this tells flutter that this State belong to MyApp class.
    @override
    var questionIndex = 0;
    
    void answerQuestion() {
        setState(() {               // setState is a function found inside State class
            questionIndex += 1;
        });
    }
    
    Widget build(BuildContext(context)) {
        var questions = [
            "What's your favourite colour ?",
            "What's your favourite animal ?",
        ];
        return MaterialApp(
            home: Scaffold(
                appbar: Appbar(
                    title: Text("My First App"),
                ), 
                body: Coulmn(
                    children: [
                        Question(
                            questions(questionIndex),   //accessing a item from the list
                        ),  // closing Question
                        RaisedButton(
                            child: Text("Answer 1"),
                            onPressed: answerQuestion
                        ),
                        RaisedButton(
                            child: Text("Answer 2"),
                            onPressed: answerQuestion
                        ),
                        RaisedButton(
                            child: Text("Answer 3"),
                            onPressed: answerQuestion
                        ),
                        RaisedButton(
                            child: Text("Answer 4"),
                            onPressed: () => {
                                print("answerd");
                                print("Thank You");
                            },
                        ),
                    ],
                ),
            ),
        );
    }
}
