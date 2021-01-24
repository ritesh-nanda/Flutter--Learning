import "package: flutter/material.dart";

void main() {
    runapp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext(context)) {
        return MaterialApp(
            home: Scaffold(
                appbar: AppBar(
                    title: Text("My First App")
                ),    //closing of appbar
                body: Text("This is my default text!"), // we can only pass one widget to the body
            ),  // closing of Scaffold class
        );      // closing of MaterialApp class
    }
}





// Different types of widget: output and input (Visible), layout and control (invisible)
// The visible widget: RaisedButtom(), Text(), Card(), etc
// The invisible widget: Row(), Column(), ListView(), etc
// The invisible widget give our app structure and control, how invisible widget are drawn onto the screen. They are indirectly visible.
// The container() widgets are in-between visible and invisible. Default is invisible but we can see some styling.