import 'package:bfb_machinery/constants/spacing.dart';
import 'package:bfb_machinery/utils/extensions/on_doubles/device_type.dart';
import 'package:bfb_machinery/utils/extensions/on_doubles/font_size.dart';
import 'package:bfb_machinery/utils/widgets/adaptive_horizontal_padding.dart';
import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
    this.height,
    this.width,
    this.backgroundImage,
    required this.title,
    this.titleWidthRatio = 0.5,
    this.buttonTitle,
    this.buttonBackgroundColor,
    this.buttonForegroundColor,
  });

  final double? height;
  final double? width;

  final String? backgroundImage;

  final String title;
  final double titleWidthRatio;

  final String? buttonTitle;
  final Color? buttonBackgroundColor;
  final Color? buttonForegroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        image: backgroundImage != null
            ? DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  backgroundImage!,
                ),
              )
            : null,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          DeviceType deviceType = constraints.maxWidth.deviceType;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: adaptiveHorizontalPadding(constraints),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: constraints.maxWidth * titleWidthRatio,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: deviceType.extraLargeTitleSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                if (buttonTitle != null) kVSpacingLarge,
                if (buttonTitle != null)
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(buttonBackgroundColor),
                      foregroundColor:
                          MaterialStatePropertyAll(buttonForegroundColor),
                      textStyle: const MaterialStatePropertyAll(
                        TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    child: Text(
                      buttonTitle!,
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
