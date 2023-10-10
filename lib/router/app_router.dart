import 'package:bfb_machinery/modules/about_us/views/about_us_view.dart';
import 'package:bfb_machinery/modules/careers/views/careers_view.dart';
import 'package:bfb_machinery/modules/contact_us/views/contact_us_view.dart';
import 'package:bfb_machinery/modules/landing/views/landing_view.dart';
import 'package:bfb_machinery/modules/products_categories/views/products_categories_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LandingView.routeName:
        return LandingView.route();

      case ProductsCategoriesView.routeName:
        return ProductsCategoriesView.route();

      case AboutUsView.routeName:
        return AboutUsView.route();

      case CareersView.routeName:
        return CareersView.route();

      case ContactUsView.routeName:
        return ContactUsView.route();

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
