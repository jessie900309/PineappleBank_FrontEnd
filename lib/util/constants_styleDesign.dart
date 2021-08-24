import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/util/AssetImgPath.dart';
import 'package:pineapplebank_frontend/util/constants.dart';



//Padding
const littlePadding = SizedBox(width: 10.0);

//The Page Title
const PageTitleStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

//TextFormField
const Color InputColor = Color(0xFFbc8f8f);//focused游標、文字、邊框、show文字
const Color InputCursorColor = Colors.brown;
// const InputBlockTextDesign = [
//   TextStyle(
//     color: InputColor,
//   ),
//   TextStyle(
//     color: InputCursorColor,
//     fontSize: NormalWordsSize,
//   ),
// ];

//TabBar Color
//Theme以外的
const TabIndicatorColor = Color(0xFFffbb77);

//AppIcon
final IconBGDesign = [
  BoxDecoration(
    color: Color(0xFFcc5000),
    shape: BoxShape.circle,
  ),
  BoxDecoration(
    color: Color(0xFFb87333),
    shape: BoxShape.circle,
  ),
  BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage(AppIconPath),
    ),
  ),
];
