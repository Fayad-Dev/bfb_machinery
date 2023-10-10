import 'package:bfb_machinery/constants/colors.dart';
import 'package:bfb_machinery/constants/radius.dart';
import 'package:bfb_machinery/constants/spacing.dart';
import 'package:bfb_machinery/data_controller/web_pages.dart';
import 'package:bfb_machinery/utils/extensions/on_doubles/device_type.dart';
import 'package:bfb_machinery/utils/widgets/adaptive_horizontal_padding.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.constraints,
    this.webIconAssetPath,
    required this.title,
  });

  final BoxConstraints constraints;

  final String? webIconAssetPath;

  final String title;

  @override
  Widget build(BuildContext context) {
    DeviceType deviceType = constraints.maxWidth.deviceType;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: adaptiveHorizontalPadding(constraints),
        vertical: kScreenPadding24,
      ),
      child: Row(
        children: [
          if (webIconAssetPath != null)
            Image.asset(
              webIconAssetPath!,
              height: 32,
              // width: 54,
            ),
          if (webIconAssetPath != null) kHSpacingMedium,
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          if (deviceType == DeviceType.phone ||
              deviceType == DeviceType.tabletOrIpad ||
              deviceType == DeviceType.undefined)
            Container(
              padding: EdgeInsets.all(kScreenPadding16 / 4),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(kMainRadius / 1.2),
              ),
              child: PopupMenuButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kMainRadius),
                ),
                itemBuilder: (context) {
                  return pagesButtons(context)
                      .map(
                        (e) => PopupMenuItem(
                          child: Text(e.title),
                        ),
                      )
                      .toList();
                },
              ),
            ),
          if (deviceType == DeviceType.laptopOrScreen ||
              deviceType == DeviceType.largeMonitor)
            ...pagesButtons(context).map((e) {
              if (e.isElevatedButton) {
                return Padding(
                  padding: EdgeInsets.only(left: kScreenPadding24),
                  child: ElevatedButton(
                    onPressed: e.onTap,
                    style: const ButtonStyle(
                      textStyle: MaterialStatePropertyAll(
                        TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    child: Text(
                      e.title,
                    ),
                  ),
                );
              }
              return Padding(
                padding: EdgeInsets.only(left: kScreenPadding24),
                child: GestureDetector(
                  onTap: e.onTap,
                  child: Text(
                    e.title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }).toList(),
        ],
      ),
    );
  }
}
