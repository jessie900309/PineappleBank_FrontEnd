import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/util/constants.dart';


//AlertDialog
const Color TitleColor = Color(0xFF8b4513);
const Color ArticleColor = Color(0xFFb87333);
const Color OptionColor = Colors.orange;
const DiaTitleStyle = TextStyle(
  fontSize: TitleWordsSize,
  color: TitleColor,
);
const DiaConStyle = TextStyle(
  fontSize: NormalWordsSize,
  color: ArticleColor,
);
const DiaOptStyle = TextStyle(
  fontSize: NormalWordsSize,
  color: OptionColor,
);//I see.
const DiaOptDesign = [//Yes or No
  TextStyle(
    color: Colors.grey,
    fontSize: NormalWordsSize,
  ),
  TextStyle(
    color: Colors.orange,
    fontSize: NormalWordsSize,
  ),
];

//TextFormField
const Color InputColor = Color(0xFFbc8f8f);//focused游標、文字、邊框、show文字
const Color InputCursorColor = Colors.brown;
const InputBlockTextDesign = [
  TextStyle(
    color: InputColor,
  ),
  TextStyle(
    color: InputCursorColor,
    fontSize: NormalWordsSize,
  ),
];


