import 'package:flutter/material.dart';

class PopPageIosIcon extends StatelessWidget {
  const PopPageIosIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Directionality.of(context) == TextDirection.ltr
          ? Icons.arrow_back_ios_new_rounded
          : Icons.arrow_back_ios_outlined,
    );
  }
}
