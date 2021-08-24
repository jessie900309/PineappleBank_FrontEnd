import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/util/CustomAlertDia.dart';



class foodFocusPage extends StatefulWidget {
  @override
  _foodFocusPageState createState() => _foodFocusPageState();
}
class _foodFocusPageState extends State<foodFocusPage> {


  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {

    // final ScreenW = MediaQuery.of(context).size.width;
    // final ScreenH = MediaQuery.of(context).size.height;

    final TRYYY = CustomAlertDia_Check(
      DiaTitle: 'TRY',
      DiaContent: "test",
      LeftXText: 'XXX',
      RightBtn: TextButton(
        child: Text("OAOAOAOAO"),
        onPressed: (){print("OuO");},
      ),
    );

    return Center(
      child: Container(
        width: 200.0,
        height: 100.0,
        color: Colors.white,
        child: TextButton(
          onPressed: () {
            showDialog<void>(context: context, builder: (context) => TRYYY);
          },
          child: Text(
            "Test Dialog",
            style: TextStyle(
              fontSize: 35.0,
            ),
          ),
        ),
      ),
    );
  }

}
