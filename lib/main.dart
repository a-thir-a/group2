import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import './hod/hodLogin.dart';
import './student/studentLogin.dart';
import './mentor/mentorLogin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mentoring"),
          backgroundColor: Color(0xFFE57373),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 50, // hard coding child width
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color:Colors.red)),
                color: Colors.pink[300],
                textColor: Colors.white,
                child: Text('HOD',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HodLoginPage()),
                  );
                },
              ),
            ),
            SizedBox(height: 20,width: 500,),
            SizedBox(
              width: 200,
              height: 50, // hard coding child width
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.red)),
                color: Colors.pink[300],
                textColor: Colors.white,
                child: Text(
                  'MENTOR',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MentorLoginPage()),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200, // hard coding child width
              height: 50,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.red)),
                color: Colors.pink[300],
                textColor: Colors.white,
                child: Text('STUDENT',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentLoginPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
