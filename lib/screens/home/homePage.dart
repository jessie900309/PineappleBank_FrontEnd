import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/screens/home/home_FindEventPage.dart';
import 'package:pineapplebank_frontend/screens/home/home_FindFoodPage.dart';
import 'package:pineapplebank_frontend/screens/home/home_FocusPage.dart';
import 'package:pineapplebank_frontend/screens/home/home_MapPage.dart';
import 'package:pineapplebank_frontend/screens/home/home_ProfilePage.dart';
import 'package:pineapplebank_frontend/util/CustomIcon.dart';


class HomePage extends StatefulWidget {

  // Call Firebase Func. 載入用戶相關資訊
  // Users user;
  // Home(Users user):user = user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //初始頁面 foodFocusPage
  int _currentIndex = 2;

  //底部導航欄
  final List<Widget> _children = [
    MapPage(), //地圖 home_MapPage 周圍的活動&食物(GoogleMap)
    foodFindEventPage(), //活動 home_FindEventPage 所有活動 可查詢篩選
    foodFocusPage(), //小房子 home_FocusPage 主頁:以地區和時間為主
    foodFindFoodPage(), //披薩 home_FindFoodPage 所有食物 可查詢篩選
    ProfilePage(), //人頭 home_ProfilePage 個人頁面
  ];

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
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.place, size:30),
            label: "Places",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, size: 30,),
            label: "Event",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(customIcon.pizza, size: 24,),
            label: "Food",
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
