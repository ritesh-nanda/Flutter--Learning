import "package: flutter/material.dart";

void main() {
    runapp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    var questionIndex = 0;
    
    void answerQuestion() {
        questionIndex += 1;
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
                        questions(questionIndex),     //accessing a item from the list
                        RaisedButton(
                            child: Text("Answer 1"),
                            onPressed: answerQuestion),
                        RaisedButton(
                            child: Text("Answer 2"),
                            onPressed: answerQuestion),
                        RaisedButton(
                            child: Text("Answer 3"),
                            onPressed: answerQuestion),
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


// There are various inbuilt ways to play with a list. E.g: To access an element from a list we can use, questions.elementAt(1)

// In general state is data or information used by our widget or app.

// App State: user authentication, loaded jobs info etc
// widget state: current user input, is loading spinner being shown ?

// Stateless widget can't re-run build() when it's property changes.
// Stateless widget means that we can't have any state. Text is an example of perfect stateless widget.

// In Stateless widget we have our build method to render the UI. We can pass data from outside through the constructor of the class and this data can change and flutter could rebuild when the external data changes. But inside of widget class the data would never change and it only rebuilds on receiving data from outside. 

// A stateful widget also has build method that renders the UI. But here we can also get our input data, so data passed in through the constructor of the widget class but we can also have some internal state and this widget gets re-rendered, so that UI will get updated by flutter whenever either that external, that input data, or when our internal state is changed.

// Both Stateless and Stateful widget can receive data via their constructors. But only StatefulWidgets can have class properties where they can update values and can re-run build().