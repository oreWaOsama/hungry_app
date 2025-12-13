import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? radius;
  final double? textSize;
  final Widget? child;

  const CustomButton({
    super.key,
    this.title,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.textColor,
    this.width,
    this.height,
    this.textSize,
    this.radius,
    this.child,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.white,
        foregroundColor: foregroundColor ?? AppColors.primary,
        minimumSize: Size(width ?? double.infinity, height ?? 70),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(radius ?? 16),
        ),
      ),
      child:
          child ??
          CustomText(
            text: title ?? '',
            size: textSize ?? 18,
            color: textColor ?? AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
