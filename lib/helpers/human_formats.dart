import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number) {
    double corrected = number * 1000;
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
      locale: 'en_US',
    ).format(corrected);
    return formatterNumber;
  }
}
