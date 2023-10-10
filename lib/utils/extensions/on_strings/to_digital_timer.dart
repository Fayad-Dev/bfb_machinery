extension ToDigitalTimer on int {
  String get toDigitalTimer {
    String minutes = (this / 60).floor().toString().padLeft(2, '0');
    String seconds = (this % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}
