import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pineapplebank_frontend/screens/wrapper.dart';
import 'package:pineapplebank_frontend/util/ColorTheme.dart';

void main() async {

  //
  // Call Firebase Func.
  // await Firebase.initializeApp();
  //

  //有async的main()
  WidgetsFlutterBinding.ensureInitialized();

  //強制直向
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 全螢幕(我不喜翻所以註解掉了)
    // SystemChrome.setEnabledSystemUIOverlays([]);

    //
    // return StreamProvider<Users>.value(
    //   initialData: null,
    //   value: AuthService().user,
    //   child:MaterialApp( ... )
    // );
    //

    return MaterialApp(
      theme: PineappleTWTheme(),
      debugShowCheckedModeBanner: false, //去除Debug標誌
      home: Wrapper(),
    );
  }
}
