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
    final centerText = Center(
      child: Text(
        "Enter amount spent",
        style: TextStyle(
          color: Color(0xFF6C5C8D),
          fontSize: 20,
        ),
      ),
    );

    final numDisplayBox = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        SizedBox(
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.height / 16,
            child: DecoratedBox(
              child: Text(text),
                decoration: BoxDecoration(
                    color: Color(0xFFFFB4A2),
                    borderRadius: BorderRadius.circular(50)))),
        Spacer(),
      ],
    );

    //NUMERIC KEYPAD
    final numKeyboard = NumericKeyboard(
      onKeyboardTap: _onKeyboardTap,
      textColor: Colors.white,
      rightButtonFn: () {
        setState(() {
          text = text.substring(0, text.length - 1);
        });
      },
      rightIcon: Icon(Icons.backspace, color: Colors.white),
      leftButtonFn: () {
        print("left button clicked");
      },
      leftIcon: Icon(Icons.check, color: Colors.white),
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );

    return Scaffold(
      backgroundColor: Color(0xFFFFCDB2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          centerText,
          numDisplayBox,
          numKeyboard,
        ],
      ),
    );
  }
}
