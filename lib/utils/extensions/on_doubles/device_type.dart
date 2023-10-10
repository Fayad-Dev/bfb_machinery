enum DeviceType { phone, tabletOrIpad, laptopOrScreen, largeMonitor, undefined }

extension DeviceTypeFinder on double {
  DeviceType get deviceType {
    switch (this) {
      case <= 480:
        return DeviceType.phone;
      case > 480 && <= 768:
        return DeviceType.tabletOrIpad;

      case > 768 && <= 1400:
        return DeviceType.laptopOrScreen;

      case > 1400:
        return DeviceType.largeMonitor;

      default:
        // This case should never happen
        return DeviceType.undefined;
    }
  }
}
