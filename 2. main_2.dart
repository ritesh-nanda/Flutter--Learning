import "package: flutter/material.dart";

void main() {
    runapp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext(context)) {
        return MaterialApp(
            home: Scaffold( 
            //scaffold has the job of creating a base page design, structure and colour scheme for giving us an UI.
            // arguments inside the scaffold
                appBar: AppBar(title: Text('My First App'),
                          ),
            // we can also use userdefined widget for appbar but here we have used a pre-defined AppBar() and passed text through Text Widget
                body: Text('This is my default app'),
            ), // closing of Scaffold class
        ); // closing of MaterialApp class
    }
}

// for any autocompletion or to get the name list of supported arguments, we can use (ctrl+space) in the IDE
// we can use autoformatting of our code in the IDE