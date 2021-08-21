import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/screens/home/homePage.dart';
// import 'package:pineapplebank_frontend/screens/authenticate/signinORregister.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Call Firebase Func. check 登入狀態
    // return either Home or Authenticate widget
    // if (user == null){return SignIn();}else{return HomePage(user);}

    return HomePage();
  }
}
