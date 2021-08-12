import 'package:flutter/material.dart';

import 'input_page.dart';

class SignInPage extends StatelessWidget {
  //elevated button style
  final elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Color(0xFF8777A6),
    minimumSize: Size(88,36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2))
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C5C8D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 190.0,
            padding: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Image.asset('web/icons/Icon-192.png'),
            ),
          ),
          Padding(  //USERNAME FORM
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid username'),
            ),
          ),
          Padding(  //PASSWORD FORM
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your password'),
            ),
          ),
          //login button that swaps to the input page
          ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
