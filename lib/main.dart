import 'package:bfb_machinery/constants/theming/light_theme.dart';
import 'package:bfb_machinery/modules/landing/views/landing_view.dart';
import 'package:flutter/material.dart';

import 'router/app_router.dart';

// https://websitedemos.net/tech-startup-02/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BFB Machinery',
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      home: const LandingView(),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: LandingView.routeName,
    );
  }
}
