import 'package:flutter/material.dart';
import './hodMainPage.dart';

class HodLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/login.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          primary: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("HOD Login Page"),
            backgroundColor: Colors.transparent,
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
                    labelStyle: TextStyle(color: Colors.pink, fontSize: 17.0),
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
                    fillColor: Colors.blueAccent,
                    border: new OutlineInputBorder(borderSide: new BorderSide(color: Colors.pink),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.pink, fontSize: 17.0),
                    
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
                        MaterialPageRoute(builder: (context) => MainPageHod()),
                      );
                    }),
              ),
              SizedBox(width: 500),
            ],
          ),
        ),
      ),
    );
  }
}
