import 'package:flutter/material.dart';
import '../main.dart';

class MainPageHod extends StatefulWidget {
  MainPageHod({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MainPageHod> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    SizedBox(
      child: Text(
        'Index 1: Mentor List',
        style: optionStyle,
      ),
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
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOD Login'),
        backgroundColor: Color(0xFFE57373),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.clear),
            tooltip: 'Next page',
            onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
          ),
        ],
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
