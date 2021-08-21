import 'package:flutter/material.dart';

const AppBarAppName = Text(
  "Welcome to Pineapple Bank !",
  style: TextStyle(color: Colors.white,),
);

const pinEmailText = "e-mail";
const pinEmailHintText = "Please enter e-mail address";
const pinCodeText = "password";
const pinCodeHintText = "Please enter password";
const pinCode2Text = "comfirm password";
const pinCodeHint2Text = "Please enter password again";
const EmailErrorText = "Please enter a valid e-mail address";
const PasswordErrorText = "Password must be at least 6 characters long";
const ConfirmPasswordErrorText = "Two different input password, please re-entry" ;

const SignInText = Text(
  "  Sign in  ", style: TextStyle(color: Colors.white),
);
const SignUpText = Text(
  "  Sign up  ", style: TextStyle(color: Colors.white),
);

const AccountErrorText = "No such account";


const Color SignInBGcolor = Color(0xFFffdead);
const Color SignInBarColor = Color(0xFFbc8f8f);
const Color ShowBlockColor = Colors.white54;
const Color InputColor = Color(0xFFbc8f8f);//focused游標、文字、邊框、show文字
const Color InputCursorColor = Colors.brown;

const BlockBorderRadius = 25.0; //框框圓角
const TextFocusedLine = 2.0; //框框加粗
const RaisedButtonborderRadius = 10.0; //按鈕、show圓角

const ChangePageIcon = Icon(
  Icons.person,
  color: Colors.white70,
);


const divLineDesign = DecoratedBox(
  decoration: BoxDecoration(
    color: Color(0xFFbc8f8f),
  ),
);

const WidgetSpace = SizedBox(height: 20.0);

const InputBlockTextDesign = [
  TextStyle(
    color: InputColor,
  ),
  TextStyle(
    color: InputCursorColor,
    fontSize: 16.0,
  ),
];

const ErrorMsgStyle = TextStyle(
  color: Colors.red,
  fontSize: 16.0,
);

final EmailInputDesign = InputDecoration(
  labelText: pinEmailText,
  hintText: pinEmailHintText,
  labelStyle: TextStyle(
    color: FocusNode().hasFocus ? InputCursorColor : InputColor,
  ),
  filled: true,
  fillColor: ShowBlockColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(BlockBorderRadius),
  ),
  focusedBorder:OutlineInputBorder(
    borderSide: BorderSide(
      color: InputColor,
      width: TextFocusedLine,
    ),
    borderRadius: BorderRadius.circular(BlockBorderRadius),
  ),
);
final PasswordInputDesign = InputDecoration(
  labelText: pinCodeText,
  hintText: pinCodeHintText,
  labelStyle: TextStyle(
    color: FocusNode().hasFocus ? InputCursorColor : InputColor,
  ),
  filled: true,
  fillColor: ShowBlockColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(BlockBorderRadius),
  ),
  focusedBorder:OutlineInputBorder(
    borderSide: BorderSide(
      color: InputColor,
      width: TextFocusedLine,
    ),
    borderRadius: BorderRadius.circular(BlockBorderRadius),
  ),
);
final PassWord2InputDesign = InputDecoration(
  labelText: pinCode2Text,
  hintText: pinCodeHint2Text,
  labelStyle: TextStyle(
    color: FocusNode().hasFocus ? InputCursorColor : InputColor,
  ),
  filled: true,
  fillColor: ShowBlockColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(BlockBorderRadius),
  ),
  focusedBorder:OutlineInputBorder(
    borderSide: BorderSide(
      color: InputColor,
      width: TextFocusedLine,
    ),
    borderRadius: BorderRadius.circular(BlockBorderRadius),
  ),
);


final SignInBtnStyle = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      )
  ),
  backgroundColor: MaterialStateProperty.all<Color>(InputColor),
);


