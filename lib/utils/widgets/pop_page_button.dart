import 'package:bfb_machinery/constants/colors.dart';
import 'package:flutter/material.dart';

import 'pop_page_ios_icon.dart';

class PopPageButton extends StatelessWidget {
  const PopPageButton({
    super.key,
    this.invertColors = false,
  });

  final bool invertColors;

  @override
  Widget build(BuildContext context) {
    return Navigator.canPop(context)
        ? CircleAvatar(
            radius: 22,
            backgroundColor: invertColors ? kMediumGrey : kLightGrey,
            foregroundColor: invertColors ? Colors.white : Colors.black,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              icon: const PopPageIosIcon(),
            ),
          )
        : const SizedBox();
  }
}
