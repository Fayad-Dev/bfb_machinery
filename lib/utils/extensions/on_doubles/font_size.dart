import 'device_type.dart';

extension FontSizer on DeviceType {
  double get extraLargeTitleSize {
    switch (this) {
      case DeviceType.phone:
        return 24;
      case DeviceType.tabletOrIpad:
        return 32;

      case DeviceType.laptopOrScreen:
        return 40;

      case DeviceType.largeMonitor:
        return 48;

      default:
        // This case should never happen
        return 26;
    }
  }

  double get bodyTextSize {
    switch (this) {
      case DeviceType.phone:
        return 14;
      case DeviceType.tabletOrIpad:
        return 16;

      case DeviceType.laptopOrScreen:
        return 18;

      case DeviceType.largeMonitor:
        return 20;

      default:
        // This case should never happen
        return 14;
    }
  }
}
