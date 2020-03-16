import 'package:flutter/material.dart';
import './studentMainPage.dart';

class StudentLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Student Login Page"),
          backgroundColor: Color(0xFFE57373),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 5),
            SizedBox(
              height: 80.0,
              width: 80.0,
              child: Image(image: AssetImage("assets/mentor.png")),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300, // hard coding child width
              height: 50,
              child: TextField(
                obscureText: false,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300, // hard coding child width
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainPageStudent()),
                    );
                  }),
            ),
            SizedBox(width: 500),
          ],
        ));
  }
}
