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

// Stateful widget is a combination of two class.
// State is a generic class.
// We use setState() inorder to change the state. Flutter doesnot automatically change the state on clicking. If so then on touching anywhere the state would get changed. So we need to use setState function and as argument pass a anonymous/ named function that has the thing we need to change state.
// The data or property value changes even without setState(). But the screen won't reflect that change because it won't re-run the build() method
// Flutter has great mechanism that it doesn't re-render everything or draw every pixel again but make the necessary changes while using the stateful widget.

// MyApp is a public class. _MyApp is a private class. This is a synatax of Dart where we can make a class private by just beginning the class name with an underscore. Hence, to make anything private in dart (class, functions or variables) just begin the name with an underscore.