import 'package:flutter/material.dart';
import './dashboard.dart';
import './signUp.dart';

class LogInPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    final name = Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'The Company',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 30,
        ),
      ),
    );
    final logo = Padding(
      padding: EdgeInsets.all(20),
      child: Hero(
          tag: 'hero',
          child: CircleAvatar(
            radius: 56.0,
            child: Image.asset('assets/eye.png'),
          )),
    );
    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );
    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );
    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Log In',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Dashboard()))
          },
        ),
      ),
    );
    final buttonForgotPassword = TextButton(
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        onPressed: null);
    final buttonSignUP = Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: ButtonTheme(
            height: 56,
            child: RaisedButton(
                child: Text('Create New Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () => {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUP()))
                    })));
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            name,
            logo,
            inputEmail,
            inputPassword,
            buttonLogin,
            buttonForgotPassword,
            buttonSignUP,
          ],
        ),
      ),
    ));
  }
}
