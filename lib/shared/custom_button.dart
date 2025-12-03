import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? textColor;
  final double? width;
  final double? radius;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.textColor,
    this.width,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.white,
        foregroundColor: foregroundColor ?? AppColors.primary,
        minimumSize: Size(width ?? double.infinity, 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? 16)),
      ),
      child: CustomText(
        text: title,
        size: 18,
        color: textColor ?? AppColors.primary,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
