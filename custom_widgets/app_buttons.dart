import 'package:flutter/cupertino.dart';

class AppButtons extends StatelessWidget {
  final double? width;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  //text
  final String text;
  final Color textColor;
  final double fontSize;
  final double fontWeight;
  //icon
  final IconData? icon;

  const AppButtons({
    super.key,
    this.width,
    required this.height,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.borderRadius,
    //text
    required this.text,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
    //icon
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
