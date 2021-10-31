import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';

//Colors
const kPRIMARY900 = Color.fromRGBO(9, 10, 10, 1);
const kPRIMARY800 = Color.fromRGBO(15, 18, 18, 1);
const kPRIMARY700 = Color.fromRGBO(29, 33, 35, 1);
const kPRIMARY = Color.fromRGBO(41, 47, 50, 1);
const kPRIMARY500 = Color.fromRGBO(71, 75, 78, 1);
const kPRIMARY400 = Color.fromRGBO(99, 102, 105, 1);
const kPRIMARY300 = Color.fromRGBO(124, 126, 128, 1);
const kPRIMARY200 = Color.fromRGBO(147, 149, 150, 1);
const kPRIMARY100 = Color.fromRGBO(190, 190, 191, 1);
const kPRIMARY50 = Color.fromRGBO(234, 235, 235, 1);
const kWHITE = Color.fromRGBO(255, 255, 255, 1);
const kBACKGROUND = Color.fromRGBO(250, 250, 250, 1);
const kLINK = Color.fromRGBO(28, 23, 255, 1);
const kLIGHT_BLUE = Color.fromRGBO(230, 229, 255, 1);

extension ThemeExt on ThemeData {
  TextStyle get caption => TextStyle(
        color: kPRIMARY900,
        fontWeight: FontWeight.w400,
        fontSize: 13,
        fontFamily: 'Work',
      );

  TextStyle get small => TextStyle(
        color: kPRIMARY900,
        fontWeight: FontWeight.w400,
        fontSize: 15,
      );
  TextStyle get p => TextStyle(
        color: kPRIMARY900,
        fontWeight: FontWeight.w400,
        fontSize: 17,
        fontFamily: 'Work',
      );
  TextStyle get bodyMedium => TextStyle(
        color: kPRIMARY900,
        fontWeight: FontWeight.w500,
        fontSize: 17,
        fontFamily: 'Work',
      );
  TextStyle get body => TextStyle(
        color: kPRIMARY900,
        fontWeight: FontWeight.w400,
        fontSize: 17,
        fontFamily: 'Work',
      );
  TextStyle get headline => TextStyle(
        color: kPRIMARY900,
        fontSize: 20,
        fontFamily: 'Work',
        fontWeight: FontWeight.w400,
      );
  TextStyle get h2 => TextStyle(
        color: kPRIMARY900,
        fontWeight: FontWeight.w400,
        fontSize: 28,
        fontFamily: 'Work',
      );
  TextStyle get h1 => TextStyle(
        color: kPRIMARY900,
        fontWeight: FontWeight.w400,
        fontSize: 36,
        fontFamily: 'Work',
      );
}

class AppThemes {
  ThemeData get theme => ThemeData(
        fontFamily: 'Work',
        scaffoldBackgroundColor: Color.fromRGBO(250, 250, 250, 1),
        textTheme: TextTheme(
          //Caption
          caption: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
          //Small
          subtitle2: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
          //P
          subtitle1: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
          //Body Medium
          bodyText2: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
          //Body
          bodyText1: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
          //Headline
          headline3: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          //H2
          headline2: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w400,
            fontSize: 28,
          ),
          //H1
          headline1: TextStyle(
            color: kPRIMARY900,
            fontWeight: FontWeight.w400,
            fontSize: 36,
          ),
        ),
      );
}
