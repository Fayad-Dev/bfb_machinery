import 'package:bfb_machinery/constants/spacing.dart';
import 'package:flutter/material.dart';

import '../pop_page_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.leading = const <Widget>[],
    this.actions = const <Widget>[],
    this.hideBackButton = false,
    this.invertColors = false,
    this.backButtonReplacement,
  });

  final String title;

  final Widget? backButtonReplacement;

  final List<Widget> leading;
  final List<Widget> actions;

  final bool hideBackButton;
  final bool invertColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kScreenPadding24),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (!hideBackButton)
                  backButtonReplacement ??
                      PopPageButton(
                        invertColors: invertColors,
                      ),
                ...leading,
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: invertColors ? Colors.white : null,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions,
            ),
          ),
        ],
      ),
    );
  }
}
