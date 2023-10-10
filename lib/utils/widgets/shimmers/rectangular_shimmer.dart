import 'package:bfb_machinery/constants/radius.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RectangularShimmer extends StatelessWidget {
  const RectangularShimmer({
    super.key,
    this.height = 100,
    this.width,
  });

  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade400,
      direction: ShimmerDirection.ltr,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(kMainRadius),
        ),
      ),
    );
  }
}
