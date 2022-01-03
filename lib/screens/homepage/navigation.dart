import 'package:flutter/material.dart';
import 'package:untitled/screens/homepage/homepage.dart';
import 'package:untitled/screens/profile/profile.dart';
import 'package:untitled/screens/vehicle/vehicle.dart';
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    HomePage(),
    VehicleAdd(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [

            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("Home"),
                backgroundColor: Color(0xFF8207DF)),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              title: Text("Add"),
            ),
            BottomNavigationBarItem
              (
                icon: Icon(Icons.person),
                title: Text("Profile"),
                backgroundColor: Color(0xFF8207DF)
            ),
          ],
          selectedItemColor: Color(0xFF8207DF),
          unselectedItemColor: Colors.black),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
