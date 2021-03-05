import "package: flutter/material.dart";

class Answer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            child: RaisedButton(
                color: Colors.blue,     // These are static properties which are used without instantiating class
                child: Text('Answer 1'),
                onPressed: null,
            ),
        );
    }
}