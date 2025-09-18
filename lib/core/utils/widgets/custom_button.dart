import 'package:bookely_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.textColor, required this.text, required this.borderRadius, this.fontSize, this.onPressed});
final Color backgroundColor;
final Color textColor;
final String text ;
final double? fontSize;
final BorderRadius borderRadius;
final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(

            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor
        ),
          onPressed: onPressed,
          child: Text(text,style: Styles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.w900,fontSize: fontSize),)
      ),
    );
  }
}
