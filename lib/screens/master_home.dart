import 'package:awan_birds_care/screens/home.dart';
import 'package:awan_birds_care/screens/play.dart';
import 'package:awan_birds_care/screens/profile.dart';
import 'package:flutter/material.dart';

class Master_Home extends StatefulWidget {
  const Master_Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Master_Home> {
  // ignore: unused_field
  final List<Widget> _widgetOptions = <Widget>[Play(), Home(), Profile()];

  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              size: 40,
            ),
            icon: Icon(Icons.queue_music),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 40,
            ),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              size: 40,
            ),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
      // ignore: avoid_unnecessary_containers
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    ));
  }
}
