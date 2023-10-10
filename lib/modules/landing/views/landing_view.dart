import 'package:bfb_machinery/constants/colors.dart';
import 'package:bfb_machinery/constants/spacing.dart';
import 'package:bfb_machinery/modules/nav_bar/views/main_nav_bar.dart';
import 'package:bfb_machinery/utils/extensions/on_doubles/device_type.dart';
import 'package:bfb_machinery/utils/widgets/custom_list_view.dart';
import 'package:bfb_machinery/utils/widgets/web_cards/footer.dart';
import 'package:bfb_machinery/utils/widgets/web_cards/title_card.dart';
import 'package:flutter/material.dart';

class LandingView extends StatelessWidget {
  const LandingView({
    super.key,
  });

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) {
        return const LandingView();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final DeviceType deviceType = constraints.maxWidth.deviceType;

          return CustomListView(
            padding: EdgeInsets.zero,
            // shrinkWrap: true,
            children: [
              Stack(
                children: [
                  TitleCard(
                    height: MediaQuery.sizeOf(context).height,
                    backgroundImage: 'assets/web/landing_image.jpg',
                    title: 'Elevate Your Precision: Unleash'
                        ' the Power of Fiber Lasers',
                    buttonTitle: 'Start building your machine',
                    buttonBackgroundColor: Colors.white,
                    buttonForegroundColor: kPrimaryColor,
                  ),
                  MainNavBar(constraints: constraints),
                ],
              ),
              kVSpacingLarge,
              kVSpacingLarge,
              Footer(
                constraints: constraints,
              ),
            ],
          );
        },
      ),
    );
  }
}
