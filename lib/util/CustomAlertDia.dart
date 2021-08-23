import 'package:flutter/material.dart';

const DiaTitleStyle = TextStyle(
  color: Color(0xFF8b4513),
  fontSize: 20.0,
);
const DiaContentStyle = TextStyle(
  color: Color(0xFFb87333),
  fontSize: 16.0,
);
const DiaText_info = Text(
  "I see.",
  style: TextStyle(
    fontSize: 16.0,
    color: Colors.orange,
  ),
);
const DiaOption_leftStyle = TextStyle(
  color: Colors.grey,
  fontSize: 16.0,
);
const DiaOption_rightStyle = TextStyle(
  color: Colors.orange,
  fontSize: 16.0,
);

class CustomAlertDia_FirstInfo extends StatelessWidget{

  final String DiaTitle;
  final String DiaContent;

  const CustomAlertDia_FirstInfo(
      {Key? key,
      required this.DiaContent,
      required this.DiaTitle,
  });

  @override
  Widget build(BuildContext context){

    final BackBtn = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: DiaText_info,
    );

    return AlertDialog(
      //已經在主題色的DialogTheme()定義了OuO
      //
      // backgroundColor: BackgroundColor,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(30.0)),
      // ),
      //這裡開始設計CustomAlertDialog()
      title: Text(
        DiaTitle,
        style: DiaTitleStyle,
      ),
      content: Text(
        DiaContent,
        style: DiaContentStyle,
      ),
      actions: [BackBtn,],
    );
  }
}

class CustomAlertDia_SceInfo extends StatelessWidget{

  final String DiaTitle;
  final String DiaContent;

  const CustomAlertDia_SceInfo(
      {Key? key,
        required this.DiaContent,
        required this.DiaTitle,
      });

  @override
  Widget build(BuildContext context){

    final BackBtn = TextButton(
      onPressed: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
      child: DiaText_info,
    );

    return AlertDialog(
      title: Text(
        DiaTitle,
        style: DiaTitleStyle,
      ),
      content: Text(
        DiaContent,
        style: DiaContentStyle,
      ),
      actions: [BackBtn,],
    );
  }
}

class CustomAlertDia_Check extends StatelessWidget{

  final String DiaTitle;
  final String DiaContent;
  final String LeftXText;
  final TextButton RightBtn;

  const CustomAlertDia_Check(
      {Key? key,
        required this.DiaContent,
        required this.DiaTitle,
        required this.LeftXText,
        required this.RightBtn,
      });

  @override
  Widget build(BuildContext context){

    final LeftXBtn = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        LeftXText,
        style: DiaOption_leftStyle,
      ),
    );

    return AlertDialog(
      title: Text(
        DiaTitle,
        style: DiaTitleStyle,
      ),
      content: Text(
        DiaContent,
        style: DiaContentStyle,
      ),
      actions: [LeftXBtn,RightBtn,],
    );
  }

}