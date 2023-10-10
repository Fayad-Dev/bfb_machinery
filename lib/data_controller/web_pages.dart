import 'package:bfb_machinery/modules/about_us/views/about_us_view.dart';
import 'package:bfb_machinery/modules/careers/views/careers_view.dart';
import 'package:bfb_machinery/modules/contact_us/views/contact_us_view.dart';
import 'package:bfb_machinery/modules/products_categories/views/products_categories_view.dart';
import 'package:bfb_machinery/utils/widgets/app_bars/models/page_button.dart';
import 'package:flutter/cupertino.dart';

List<PageButton> pagesButtons(BuildContext context) => [
      PageButton(
        title: 'Products',
        onTap: () {
          Navigator.pushNamed(context, ProductsCategoriesView.routeName);
        },
      ),
      PageButton(
        title: 'About us',
        onTap: () {
          Navigator.pushNamed(context, AboutUsView.routeName);
        },
      ),
      PageButton(
        title: 'Careers',
        onTap: () {
          Navigator.pushNamed(context, CareersView.routeName);
        },
      ),
      PageButton(
        title: 'Contact us',
        onTap: () {
          Navigator.pushNamed(context, ContactUsView.routeName);
        },
        isElevatedButton: true,
      ),
    ];
