extension Capitalize on String {
  String get capitalize => '${split('').first.toUpperCase()}${substring(1)}';
}
