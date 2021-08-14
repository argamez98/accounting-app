import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    
    final centerText = Center(
      child: Text(
        "Enter amount spent",
        style: TextStyle(
          color: Color(0xFF6C5C8D),
          fontSize: 20,
        ),
      ),
    );

    final numDisplayBox = SizedBox(
        width: MediaQuery.of(context).size.width / 1.4,
        height: MediaQuery.of(context).size.height / 16,
        child: DecoratedBox(
            decoration: BoxDecoration(
                color: Color(0xFFFFB4A2),
                borderRadius: BorderRadius.circular(50))));

    return Scaffold(
      backgroundColor: Color(0xFFFFCDB2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          centerText,
          numDisplayBox,
        ],
      ),
    );
  }
}
