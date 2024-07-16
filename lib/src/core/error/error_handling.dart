import 'package:flutter/foundation.dart';

class ErrorHandling {
  // TODO: show snack bar
  static void show(String message) {
    if (kDebugMode) {
      print(message);
    }
  }
}
