import "package: flutter/material.dart";

class Question extends StatelessWidget {
    final String questionText;      
    // final is use to make it constant i.e it's value can't re-assigned elsewhere after we assigned it's initial value in constructor and being a stateless widget it is good to set it to final as it wouldn't have any effect.
    
    Question(this.questionText);
    
    @overide
    Widget build(BuildContext context) {
        return Text(questionText, 
                    style: TextStyle(font: 28), 
                    textAlign: TextAlign.centre,
                   ); 
    }
}

// We re-built stateless widget not because we change state internally it can't it stateless but because data from outside changes when build method in main ran again.

// style is a named argument takes a text style object and this is not a widget but a normal object based on TextStyle() class which in turn is providedby material.dart

// TextStyle takes different argument which we can view by pressing <ctrl+space>

// textAlign is used to align the text and for this we use TextAlign. TextAlign is called enum which is a list of predefined values i.e centre, left, right etc. Enum is a different datatype in Dart which assigns labels to these different options to these different numbers.

// However the text wouldn't be centered after doing this because the text widget allocates as much space as the text needs. We can change this by wrapping our text into another widget i.e container.