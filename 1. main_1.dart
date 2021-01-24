import "package:flutter/material.dart";         
// importing a predefined packages; it unlocks a lot of core feature which we need to build an app

void main() {                                  
    // predefined function to call
    
    runapp(MyApp()); // It builds the main flutter widget and calls build() on it
    
}

// void main() => runapp(MyApp()); this can be used in any flutter function having only one expression.                                                                                                                                        

class MyApp extends StatelessWidget {           
    // inheriting the properties of stateless widgets
    @overide // it is provided by dart. We can work without it but it just makes our code clearer and cleaner.
            // it tells that we don't mistakely but deleberately overide the build method inside statelessWidget 
            // and statelessWidget forces us to do so.
    
    Widget build(BuildContext context) {   
        // return type is Widget & context is object, type is BuildContext
        // the build method returns the widget/widgettree to rendered onto the screen
        // flutter automatically provides the value for the context as it calls the build method by compulsion
        
        return MaterialApp(home: Text('hello!'));
            // returning an predefined widget that does some setup
            // home is the core widget that flutter will bring when the app will be mounted on to the screen
            // Text widget takes a string which helps to put the text in screen
            // Text and MaterialApp widget classes and we can pass data through constructor
            
    }
}
    
// In flutter, every widget is a dart class with has a build method