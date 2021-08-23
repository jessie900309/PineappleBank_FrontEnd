import 'package:flutter/material.dart';
//
//傳說中的主題色
//PineappleTWTheme()
//
//台灣鳳梨南八萬 耶耶耶~~~
//
//
const Pineapple100 = Color(0xFFffdead);
const Pineapple50 = Color(0xFFffd180);
const Pineapple25 = Color(0xFFffbb77);
const Pineapple300 = Colors.orangeAccent;
const Pineapple400 = Colors.orange;
const Pineapple900 = Colors.brown;
const PineappleNone = Colors.grey;
const PineappleWhite = Colors.white;
const PineappleBackgroundWhite = Colors.white;
const PineappleErrorRed = Colors.deepOrange;
final PineappleColor = ColorScheme(
  brightness: Brightness.light,
  background: Pineapple100,
  primary: Pineapple400,
  primaryVariant: Pineapple900,
  secondary: Pineapple100,
  secondaryVariant: Pineapple900,
  surface: PineappleWhite,
  error: PineappleErrorRed,
  onPrimary: Pineapple900,
  onSecondary: Pineapple900,
  onSurface: Pineapple900,
  onBackground: Pineapple900,
  onError: PineappleWhite,

);
ThemeData PineappleTWTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    colorScheme: PineappleColor,
    toggleableActiveColor: Pineapple300,
    primaryColor: Pineapple300,
    accentColor: Pineapple50,
    buttonColor: Pineapple100,
    scaffoldBackgroundColor: Pineapple100,
    cardColor: PineappleBackgroundWhite,
    errorColor: PineappleErrorRed,
    unselectedWidgetColor: PineappleNone,
    tabBarTheme: TabBarTheme(
      labelColor: Pineapple25,
      unselectedLabelColor: PineappleNone,
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: PineappleColor,
      textTheme: ButtonTextTheme.normal,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: PineappleWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
    ),
  );
}