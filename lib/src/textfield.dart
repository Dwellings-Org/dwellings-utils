// class DwellingsTextField

import 'package:dwellings_utils/dwellings_utils.dart';
import 'package:dwellings_utils/src/text/textstyle.dart';
import 'package:dwellings_utils/src/utils/color.dart';
import 'package:flutter/material.dart';

class DwellingsTextField extends StatefulWidget {
  const DwellingsTextField({
    super.key,
    this.isPassword = false,
    this.backgroundColor,
    this.maxLines = 1,
    this.focusNode,
    this.maxLength,
    this.prefixIcon,
    this.contentPadding,
    this.hintText,
    this.hintStyle,
  });

  final bool isPassword;
  final Color? backgroundColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final int? maxLength;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final EdgeInsets? contentPadding;

  @override
  State<DwellingsTextField> createState() => _DwellingsTextFieldState();
}

class _DwellingsTextFieldState extends State<DwellingsTextField> {
  bool obscureText = true;
  _changePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      focusNode: widget.focusNode,
      obscureText: widget.isPassword ? obscureText : false,
      decoration: InputDecoration(
        hintStyle: widget.hintStyle ??
            AppTextStyle.body2.copyWith(color: AppColor.grey.shade500),
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        contentPadding: widget.contentPadding,
        suffixIcon: widget.isPassword
            ? InkWell(
                onTap: _changePasswordVisibility,
                child: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        fillColor: widget.backgroundColor,
        filled: widget.backgroundColor != null,
        // colo
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: widget.backgroundColor != null
                ? Colors.transparent
                : AppColor.grey.shade100,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColor.primary.shade400,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.2,
            color: AppColor.red.shade400,
          ),
        ),
      ),
    );
  }
}
