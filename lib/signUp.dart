import 'package:LogInPage/dashboard.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    final _titleText = Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'Sign Up',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.cyan[900],
          fontWeight: FontWeight.w400,
          fontSize: 40.0,
        ),
      ),
    );
    final firstName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: 'First name',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
    final lastName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: 'Last name',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
    final email = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      ),
    );
    final password = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      ),
    );
    final confirmPassword = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Confirm Password',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      ),
    );
    final genderTitleText = Text(
      'Gender',
      style: TextStyle(color: Colors.black, fontSize: 16.0),
    );
    final buttonSignUp = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
        ),
      ),
    );
    //final inputGender = Padding();
    String radioButtonItem = 'Male';
    int id = 1;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[300],
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              _titleText,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: firstName,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                  ),
                  Expanded(
                    child: lastName,
                  ),
                ],
              ),
              email,
              password,
              confirmPassword,
              //genderTitleText,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Male',
                    style: new TextStyle(fontSize: 17.0),
                  ),
                  Radio(
                    value: 1,
                    groupValue: id,
                    onChanged: (value) {
                      setState(() {
                        radioButtonItem = 'Male';
                        id = 1;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    style: new TextStyle(fontSize: 17.0),
                  ),
                  Radio(
                    value: 2,
                    groupValue: id,
                    onChanged: (value) {
                      setState(() {
                        radioButtonItem = 'Female';
                        id = 2;
                      });
                    },
                  ),
                ],
              ),
              buttonSignUp,
            ],
          ),
        ),
      ),
    );
  }
}
