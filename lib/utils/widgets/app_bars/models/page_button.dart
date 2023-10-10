import 'dart:ui';

class PageButton {
  final String title;
  final VoidCallback onTap;
  final bool isElevatedButton;

  PageButton({
    required this.title,
    required this.onTap,
    this.isElevatedButton = false,
  });
}
