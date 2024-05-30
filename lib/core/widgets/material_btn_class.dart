import 'package:flutter/material.dart';

class MaterialBtnClass extends StatelessWidget {
  const MaterialBtnClass({
    super.key,
    required this.textBtn,
    required this.onPressedM,
    required this.fontFamilyText,
    required this.colorBtn,
    required this.colorBtnText,
    required this.colorBtnHighLight,
    required this.heightBtn,
    required this.widthBtn,
    required this.radiusBtn,
    required this.fontSizeText,
  });

  final String textBtn;
  final String fontFamilyText;
  final double heightBtn;
  final double radiusBtn;
  final double widthBtn;
  final double fontSizeText;
  final void Function()? onPressedM;
  final Color colorBtn;
  final Color colorBtnText;
  final Color colorBtnHighLight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radiusBtn),
      child: SizedBox(
        height: heightBtn,
        width: widthBtn,
        child: MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: onPressedM,
          color: colorBtn,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: colorBtnHighLight,
          child: Text(
            textBtn,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: fontSizeText,
              fontFamily: fontFamilyText,
              // height: 1.15,
              color: colorBtnText,
            ),
          ),
        ),
      ),
    );
  }
}
