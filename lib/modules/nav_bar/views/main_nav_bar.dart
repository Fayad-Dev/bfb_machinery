import 'package:bfb_machinery/data_controller/main_info.dart';
import 'package:bfb_machinery/utils/widgets/app_bars/web/nav_bar.dart';
import 'package:flutter/material.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({
    super.key,
    required this.constraints,
  });
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return NavBar(
      constraints: constraints,
      title: kWebsiteName,
      // webIconAssetPath: 'assets/web/landing_image.jpg',
    );
  }
}
