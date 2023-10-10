import 'package:flutter/foundation.dart' show kDebugMode;

extension UseIfDebugMode on String {
  String? get ifDebugMode => kDebugMode ? this : null;
}
