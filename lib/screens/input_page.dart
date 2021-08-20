import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    //helper function to work the buttons
    _onKeyboardTap(String value) {
      setState(() {
        text = text + value;
      });
    }
    
    //text on the header
    final centerText = Center(
      child: Text(
        "Enter amount spent",
        style: TextStyle(
          color: Color(0xFF6C5C8D),
          fontSize: 20,
        ),
      ),
    );

    //NUMPAD
    final numDisplayBox = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        SizedBox(
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.height / 16,
            child: DecoratedBox(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF6C5C8D),
                        fontSize: 20,
                      ),
                    )),
                decoration: BoxDecoration(
                    color: Color(0xFFFFB4A2),
                    borderRadius: BorderRadius.circular(50)))),
        Spacer(),
      ],
    );

    //NUMERIC KEYPAD
    final numKeyboard = NumericKeyboard(
      onKeyboardTap: _onKeyboardTap,
      textColor: Color(0xFF6C5C8D),
      rightButtonFn: () {
        setState(() {
          if (text.length > 0) text = text.substring(0, text.length - 1);
        });
      },
      rightIcon: Icon(Icons.backspace, color: Color(0xFF6C5C8D)),
      leftButtonFn: () {
        setState(() {
          text = text + ".";
        });
      },
      leftIcon: Icon(Icons.brightness_1, color: Color(0xFF6C5C8D)),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
    
    //CIRCLE BUTTON
    final circleButton = ClipRect(
      child: Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            minimumSize: Size(50, 100),
            shape: CircleBorder(),
            primary: Color(0xFFE5989B)),
        child: Text(
          "Continue",
          style: TextStyle(fontSize: 19, color: Color(0xFF6C5C8D)),
        ),
      ),
    ));

    return Scaffold(
      //floatingActionButton: circleButton,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFF6C5C8D)),
        backgroundColor: Color(0xFFFFB4A2),
      ),
      backgroundColor: Color(0xFFFFCDB2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          centerText,
          numDisplayBox,
          numKeyboard,
          circleButton,
        ],
      ),
    );
  }
}
