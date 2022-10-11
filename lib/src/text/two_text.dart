import 'package:dwellings_utils/dwellings_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TwoText extends StatelessWidget {
  const TwoText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.firstTextStyle,
    this.secondTextStyle,
    this.onFirstTap,
    this.onSecondTap,
  });

  final String firstText;
  final String secondText;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final VoidCallback? onFirstTap;
  final VoidCallback? onSecondTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        recognizer: TapGestureRecognizer()..onTap = onFirstTap,
        text: firstText,
        style: firstTextStyle ??
            AppTextStyle.h6
                .copyWith(color: Theme.of(context).textTheme.bodyText1?.color),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onSecondTap,
            text: secondText,
            style: firstTextStyle ??
                AppTextStyle.h6.copyWith(color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
