import "package: flutter/material.dart";

class Question extends StatelessWidget {
    final String questionText;      
    
    Question(this.questionText);
    
    @overide
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            margins: EdgeInsets.all(10),
            child: Text(
                questionText, 
                style: TextStyle(font: 28), 
                textAlign: TextAlign.centre,
            ),
        );
    }
}

// container by default is invisible doesn't have anything to see on the screen.
// In the container we used 2 arguments i.e width and child.
// we use child to pass the Text() widget.
// Even after wrapping our text into the container we would see no centered alignment. So we would set width to double.infinity and infinity give us a width that ensures container get as maximum size, width and by default full width of device.
// After setting width we would see the text is aligned at centre. As now the Text doesn't use it's text for the measurement for how big it should be but the widget.
// margin is spacing around the container. 

// The container widget is a special widget which has bunch of settings which allows us to space and align things. The core of the container always is the child. Around that we can add some padding i.e internal spacing inside of the container. Now inside means that the container may also have a border which marks the border of the conatiner and that border can be drawn in such that we can see it and give it a colour and outside of that border we have margin and that is the spacing around that container, between the conatiner and neighbouring elements. These all makes up the container.

// margin is of EdgeInsets geometry. 
// .only, .lerp etc are just constructors. A class can have multiple constructors and we can call them as methods on the object

// .only -- we can target at one specific direction 
// .all -- we can target in all direction

// const name.nick_name(name); --- const stands for constructor and this is a way of defining constructor in dart and this .<const_name> is useful for defining multiple constructor. 
// Syantax: const <class_name>.<constructor_name>({this.arguments});

// pressing cmd or command / ctrl or control and then clicking on the dart class would open the raw program code.