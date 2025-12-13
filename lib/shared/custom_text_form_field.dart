import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final bool? obscureText;
  final String hint;
  final TextEditingController controller;
  const CustomTextFormField({
    super.key,
    this.obscureText,
    required this.hint,
    required this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool? _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.primary,
      cursorHeight: 20,
      obscureText: _obscureText ?? false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fill ${widget.hint} field';
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        suffixIcon: widget.obscureText == true
            ? GestureDetector(
                onTap: _toggleObscureText,
                child: Icon(CupertinoIcons.eye, color: Colors.grey),
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
