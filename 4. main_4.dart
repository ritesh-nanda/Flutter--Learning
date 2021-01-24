import "package: flutter/material.dart";

void main() {
    runapp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    
    void answerQuestion() {
        print("Answer Recorded");
    }
    
    Widget build(BuildContext(context)) {
        var questions = [
            "What's your favourite colour ?", 
            "What's your favourite animal ?",
        ];
        return MaterialApp(
            home: Scaffold(
                appbar: AppBar(
                    title: Text("My First App"),
                ),
                body: Column(                               // Column is used to rendered widget in a column
                    children: [                             // The column has a children named argument which takes a list of widgets
                        Text('The Question!'),
                        RaisedButton(                       // RaisedButton is a type of button and child is also a class
                            child: Text('Answer 1'), 
                            onPressed: answerQuestion),     // onPressed is a function which is executed when RaisedButton is pressed
                        RaisedButton(
                            child: Text('Answer 2'), 
                            onPressed: answerQuestion),     //we have passed here the pointer of function to onPressed not the function
                        RaisedButton(
                            child: Text('Answer 3'),
                            onPressed: answerQuestion),
                        RaisedButton(
                            child: Text('Answer 4'),
                            onPressed: () => {              //anonymous function
                                print("answered");
                                print("Thank You"); 
                            },
                        ),
                    ],
                ),
            ),
        );
    }
}


// Row is used to rendered widget in a row i.e next to each other 
// children: <Widget>[] is generic type inference which tells dart that this will host a list of widget
// onPressed takes only a non-return type function. if [ onPressed: null ], then the buttons are deactivated

// if we pass [ onpressed: answerQuestion() ], a function it will show an error. The onpressed method takes a function pointer in real not the actual function to perform a task. This is because when object of dart is formed it would execute the steps and on encountering the onpressed it would call the function as we passed it to onPressed. But we want to execute the function only when the buttons are pressed. Hence, onPressed receives the pointer of the function so that when the button is pressed it will call that function associated with it.

//anonymous function is a function which has no name and is defined into the onPressed directly. Generally used when there is only one RaisedButton class. These would also not execute immediately upon encountering onPressed because we have defined only the defination.
                        
// () => {...}() ; this would execute the function immediately i.e paranthesis is added at the end.
            