

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constant/app_colors.dart';

class AboutMeButton extends StatelessWidget {
  const AboutMeButton({super.key, this.borderRadius, this.backgroundColor, this.horizontalPadding, this.verticalPadding, this.buttonWidth, this.buttonHeight, required this.buttonText, required this.textStyle, required this.onPressed});
    final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? AppColors.primaryColor,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12,
            vertical: verticalPadding ?? 14,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}