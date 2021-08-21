import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  // Call Firebase Func. 載入用戶相關資訊
  // Users user;
  // Home(Users user):user = user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  //   小房子、 披薩、  活動、  map、 Profile
  final List<Widget> _children = [
    // foodFocusPage(),
    // foodFindFoodPage(),
    // foodFindEventPage(),
    // placePage(),
    // ProfilePage(),
  ];

  //
  // Users user;
  // _HomeState(user): user = user;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 24.0,
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30,),
            label: "Food",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(customIcon.pizza, size: 24,),
          //   label: "Food",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, size: 30,),
            label: "Event",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place, size:30),
            label: "Places",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size:30),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
