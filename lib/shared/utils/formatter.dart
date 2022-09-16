import 'package:intl/intl.dart';

class Formatter {
  static currencyFormatter(double value) {
    final formatedNumber = NumberFormat.currency(
        locale: 'pt-BR', customPattern: '#,###.#', decimalDigits: 2);
    return formatedNumber.format(value);
  }

  static fractionFormatter(double value) {
    final formatedNumber = NumberFormat.currency(
        locale: 'pt-BR', customPattern: '#.#', decimalDigits: 2);
    return formatedNumber.format(value);
  }
}
