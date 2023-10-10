import 'package:bfb_machinery/constants/spacing.dart';
import 'package:bfb_machinery/utils/extensions/on_doubles/device_type.dart';
import 'package:flutter/rendering.dart';

double adaptiveHorizontalPadding(BoxConstraints constraints) {
  DeviceType deviceType = constraints.maxWidth.deviceType;

  print(deviceType);

  switch (deviceType) {
    case DeviceType.phone:
      return kScreenPadding24;

    case DeviceType.tabletOrIpad:
      return kScreenPadding24 * 1.5;

    case DeviceType.laptopOrScreen:
      // return constraints.maxWidth * 0.15;
      return constraints.maxWidth * 0.075;

    case DeviceType.largeMonitor:
      return constraints.maxWidth * 0.25;

    case DeviceType.undefined:
      return 0;
  }
}
