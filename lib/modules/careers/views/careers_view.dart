import 'package:bfb_machinery/constants/colors.dart';
import 'package:bfb_machinery/modules/nav_bar/views/main_nav_bar.dart';
import 'package:bfb_machinery/utils/widgets/custom_list_view.dart';
import 'package:bfb_machinery/utils/widgets/web_cards/title_card.dart';
import 'package:flutter/material.dart';

class CareersView extends StatelessWidget {
  const CareersView({super.key});

  static const String routeName = '/careers';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) {
        return const CareersView();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return CustomListView(
              padding: EdgeInsets.zero,
              children: [
                Stack(
                  children: [
                    TitleCard(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      backgroundImage: 'assets/web/landing_image.jpg',
                      title: 'Careers',
                      buttonBackgroundColor: Colors.white,
                      buttonForegroundColor: kPrimaryColor,
                    ),
                    MainNavBar(constraints: constraints),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
