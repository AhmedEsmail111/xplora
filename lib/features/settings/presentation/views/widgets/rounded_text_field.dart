import 'package:flutter/material.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/text_styles.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.height,
    this.width,
    this.onChanged,
    this.maxLength,
  });
  final String hintText;
  final TextEditingController? controller;
  final double? height;
  final double? width;
  final void Function(String)? onChanged;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        controller: controller,
        cursorColor: secondaryColor,
        cursorWidth: 1,
        onChanged: onChanged,
        maxLength: maxLength,
        style: style14Bold.copyWith(
            fontWeight: FontWeight.w600, color: Colors.black),
        decoration: InputDecoration(
          border: _buildOutlineInputBorder(),
          enabledBorder: _buildOutlineInputBorder(),
          focusedBorder: _buildOutlineInputBorder(),
          errorBorder: _buildOutlineInputBorder(),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: style14Bold.copyWith(
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
  }
}
