import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextField extends StatelessWidget {
  late String hinttext;
  double size;
  late Color color;
  var textInputAction;
  bool obscureText;
  var controller;
  var keyboardType;

  MyTextField(
      {Key? key,
      required this.hinttext,
      required this.keyboardType,
      required this.controller,
      required this.size,
      required this.color,
      required this.textInputAction,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: textInputAction,
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: 1,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintStyle: TextStyle(
            color: color,
            fontSize: size,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.normal),
        hintText: hinttext,
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  double height;
  double width;
  String imagePath;

  MyImage({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: height,
      width: width,
    );
  }
}

class MyText extends StatelessWidget {
  String text;
  double? fontsize;
   var fontstyle;
  var overflow;
  var fontwaight;
  var textalign;
  Color color;

  MyText(
      {Key? key,
      required this.overflow,
      required this.color,
      required this.text,
       this.fontsize,
      required this.textalign,
       this.fontwaight,
      required this.fontstyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,textAlign: textalign,
      style: TextStyle(
          fontSize: fontsize,
          fontStyle: fontstyle,
          color: color,
          overflow: overflow,
          fontWeight: fontwaight),
    );
  }
}
