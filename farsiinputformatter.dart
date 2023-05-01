import 'package:flutter/services.dart';
import 'package:shasfa/util/replacefarsiandenglishnumber.dart';

class FarsiInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    newValue = newValue.copyWith(text: replaceFarsiNumber(newValue.text));
    oldValue = newValue.copyWith(text: replaceFarsiNumber(newValue.text));
    return oldValue;
  }
}
