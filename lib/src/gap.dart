import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, this.height = 10, this.width = 10});

  ///assign [gap] to [height] and [width]
  const Gap.both({super.key, required double gap})
      : height = gap,
        width = gap;

  ///assign 0 (zero) to [height] and [width]
  const Gap.shrink({super.key})
      : height = 0,
        width = 0;

  final double height;
  final double width;

  static Gap get s4 => const Gap.both(gap: 4);
  static Gap get s6 => const Gap.both(gap: 6);
  static Gap get s8 => const Gap.both(gap: 8);
  static Gap get s10 => const Gap.both(gap: 10);
  static Gap get s12 => const Gap.both(gap: 12);
  static Gap get s14 => const Gap.both(gap: 14);
  static Gap get s16 => const Gap.both(gap: 16);
  static Gap get s18 => const Gap.both(gap: 18);
  static Gap get s20 => const Gap.both(gap: 20);
  static Gap get s22 => const Gap.both(gap: 22);
  static Gap get s24 => const Gap.both(gap: 24);
  static Gap get s26 => const Gap.both(gap: 26);
  static Gap get s28 => const Gap.both(gap: 28);
  static Gap get s30 => const Gap.both(gap: 30);
  static Gap get s32 => const Gap.both(gap: 32);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
