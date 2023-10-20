import 'package:flutter/material.dart';
import './size_configs.dart';

const Color kPrimaryColor = Color(0xffb22828);
const Color kPColor = Color(0xff70dcd7);
const Color SPColor = Color(0xffFC9D45);
const Color kSecondaryColor = Color(0xff573353);
const Color kScaffoldBackground = Color(0xffFFF3E9);
const Color kS= Color(0xff2195f2);


final kTitle = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 7,
  color: kSecondaryColor,
);

final ktt = TextStyle(
  fontFamily: 'josefinSans',
  color: kPrimaryColor,
  fontSize: 23,
  fontWeight: FontWeight.bold,
);

final ptt = TextStyle(
  fontFamily: 'Poppins',
  color: kSecondaryColor,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

final kTitle2 = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 6,
  color: kSecondaryColor,
);

final kBodyText1 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 6,
  fontWeight: FontWeight.bold,
);

final kBodyText2 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4,
  fontWeight: FontWeight.bold,
);

final kBodyText3 = TextStyle(
    color: kSecondaryColor,
    fontSize: SizeConfig.blockSizeH! * 3.8,
    fontWeight: FontWeight.normal);
