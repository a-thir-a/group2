import 'package:flutter/material.dart';

class MainPageMentor extends StatefulWidget {
  MainPageMentor({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MainPageMentor> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    
    Text(
      'Index 5: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Mentor List',
      style: optionStyle,
    ),
    Text(
      'Index 2: Student List',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOD Login'),
        backgroundColor: Color(0xFFE57373),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Mentor List'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Student List'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[300],
        onTap: _onItemTapped,
      ),
    );
  }
}
