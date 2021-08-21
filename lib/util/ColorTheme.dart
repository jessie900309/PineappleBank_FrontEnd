import 'package:flutter/material.dart';
//
//傳說中的主題色
//PineappleTWTheme()
//
//台灣鳳梨南八萬 耶耶耶~~~
//
//
const Pineapple100 = Color(0xFFffdead);
const Pineapple50 = Color(0xFFFFD180);
const Pineapple300 = Colors.orangeAccent;
const Pineapple400 = Colors.orange;
const Pineapple900 = Colors.brown;
const PineappleWhite = Colors.white;
const PineappleBackgroundWhite = Colors.white;
const PineappleErrorRed = Colors.deepOrange;
final ColorScheme PineappleColor = ColorScheme(
  primary: Pineapple400,
  primaryVariant: Pineapple900,
  secondary: Pineapple100,
  secondaryVariant: Pineapple900,
  surface: PineappleWhite,
  background: Pineapple100,
  error: PineappleErrorRed,
  onPrimary: Pineapple900,
  onSecondary: Pineapple900,
  onSurface: Pineapple900,
  onBackground: Pineapple900,
  onError: PineappleWhite,
  brightness: Brightness.light,
);
ThemeData PineappleTWTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: PineappleColor,
    toggleableActiveColor: Pineapple300,
    primaryColor: Pineapple300,
    accentColor: Pineapple50,
    buttonColor: Pineapple100,
    scaffoldBackgroundColor: Pineapple100,
    cardColor: PineappleBackgroundWhite,
    errorColor: PineappleErrorRed,
    buttonTheme: ButtonThemeData(
      colorScheme: PineappleColor,
      textTheme: ButtonTextTheme.normal,
    ),
  );
}