import 'package:dwellings_utils/dwellings_utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton(
      {this.height, this.width, this.isRounded = true, Key? key, this.radius})
      : super(key: key);
  final double? height, width, radius;
  final bool isRounded;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.grey.shade100,
      highlightColor: AppColor.grey.shade50,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            radius != null
                ? radius!
                : isRounded
                    ? 20
                    : 0,
          ),
          color: AppColor.grey.shade100,
        ),
        padding: const EdgeInsets.all(5),
      ),
    );
  }
}
