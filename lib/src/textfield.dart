import 'package:dwellings_utils/dwellings_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.constraints,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
  })  : title = null,
        titleStyle = null;

  const DwellingsTextField.title({
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
    this.title,
    this.titleStyle,
    this.constraints,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Color? backgroundColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final int? maxLength;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final EdgeInsets? contentPadding;
  final String? title;
  final TextStyle? titleStyle;
  final BoxConstraints? constraints;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title!,
            style: widget.titleStyle ??
                AppTextStyle.h6.copyWith(
                  color: AppColor.grey.shade700,
                ),
          ),
          Gap.s8,
        ],
        Container(
          constraints: widget.constraints,
          child: TextFormField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            validator: widget.validator,
            maxLength: widget.maxLength,
            maxLines: widget.maxLines,
            textCapitalization: widget.textCapitalization,
            inputFormatters: widget.inputFormatters,
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
                        obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    )
                  : null,
              fillColor: widget.backgroundColor,
              filled: widget.backgroundColor != null,
              // colo
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.5,
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
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: AppColor.red,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: AppColor.red,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
