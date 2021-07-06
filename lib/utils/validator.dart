import 'package:flutter/cupertino.dart';

class Validator {
  bool validateEmail(TextEditingController controller) {
    String email = controller.text;
    if (email.isEmpty) {
      return false;
    }
    if (email.contains('@.') || email.contains('.@') || email.startsWith('@')) {
      return false;
    }
    if (!email.endsWith('.com')) {
      return false;
    }
    return true;
  }

  bool validateEmptyField(TextEditingController controller) {
    String field = controller.text;
    if (field.isEmpty) {
      return false;
    }
    return true;
  }

  bool validateAlphanumeric(TextEditingController controller) {
    String field = controller.text;
    if (field.isEmpty) {
      return false;
    }

    var isAlpha = field.runes
        .where((element) {
          if ((element >= 65 && element <= 90) ||
              (element >= 61 && element <= 122)) {
            return true;
          } else {
            return false;
          }
        })
        .toList()
        .length;

    var isNumeric = field.runes
        .where((element) {
          if ((element >= 65 && element <= 90) ||
              (element >= 61 && element <= 122)) {
            return true;
          } else {
            return false;
          }
        })
        .toList()
        .length;
    if (isAlpha == 0 && isNumeric == 0) {
      return false;
    }
    return true;
  }
}
