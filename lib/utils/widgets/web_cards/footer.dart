import 'package:bfb_machinery/constants/spacing.dart';
import 'package:bfb_machinery/data_controller/main_info.dart';
import 'package:bfb_machinery/data_controller/web_pages.dart';
import 'package:bfb_machinery/utils/extensions/on_doubles/device_type.dart';
import 'package:bfb_machinery/utils/widgets/adaptive_horizontal_padding.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    DeviceType deviceType = constraints.maxWidth.deviceType;

    Widget webInfo = Column(
      crossAxisAlignment: deviceType == DeviceType.phone
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          kWebsiteName,
          textAlign: deviceType == DeviceType.phone ? TextAlign.center : null,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kVSpacingLarge,
        SizedBox(
          width: deviceType == DeviceType.phone
              ? null
              : constraints.maxWidth * 0.4,
          child: Text(
            kWhoWeAre,
            textAlign: deviceType == DeviceType.phone ? TextAlign.center : null,
            style: const TextStyle(
              color: Colors.white,
              // fontSize: 16,
            ),
          ),
        ),
      ],
    );

    Widget company = Column(
      children: [
        const Text(
          'Company',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kVSpacingLarge,
        ...pagesButtons(context)
            .map(
              (e) => Padding(
                padding: EdgeInsets.only(
                  bottom: kScreenPadding16,
                ),
                child: GestureDetector(
                  onTap: e.onTap,
                  child: Text(
                    e.title,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );

    Widget solutions = Column(
      children: [
        const Text(
          'Solutions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kVSpacingLarge,
        ...pagesButtons(context)
            .map(
              (e) => Padding(
                padding: EdgeInsets.only(
                  bottom: kScreenPadding16,
                ),
                child: GestureDetector(
                  onTap: e.onTap,
                  child: Text(
                    e.title,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: adaptiveHorizontalPadding(constraints),
        vertical: kScreenPadding24,
      ),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          kVSpacingLarge,
          if (deviceType != DeviceType.phone)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                webInfo,
                const Spacer(),
                solutions,
                kHSpacingLarge,
                kHSpacingLarge,
                company,
              ],
            ),
          if (deviceType == DeviceType.phone) ...[
            webInfo,
            kVSpacingLarge,
            solutions,
            kVSpacingLarge,
            company,
          ],
          kVSpacingLarge,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Copyright © ${DateTime.now().year} BFB Machinery',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
