import 'package:intl/intl.dart';

class Formatter {
  static currencyFormatter(double value) {
    final formatedNumber = NumberFormat.currency(
        locale: 'pt-BR', customPattern: '#,###.#', decimalDigits: 2);
    return formatedNumber.format(value);
  }

  static fractionFormatter(
      double totalValue, double actualValue, bool detailed) {
    double value = actualValue / totalValue;
    final formatedNumber = NumberFormat.currency(
        locale: 'pt-BR', customPattern: '#.##', decimalDigits: 2);
    final detailedFormattedNumber = NumberFormat.currency(
        locale: 'pt-BR', customPattern: '#.##', decimalDigits: 8);

    if (detailed) {
      return detailedFormattedNumber.format(value);
    }

    return formatedNumber.format(value);
  }

  static variationFormatter(double totalValue, double actualValue) {
    totalValue = totalValue * 100;

    double result = totalValue / actualValue;

    result = result - 100;

    final formatedNumber =
        NumberFormat.currency(customPattern: '#.##', decimalDigits: 2);

    if (result < 0) {
      return '${formatedNumber.format(result)} %';
    }

    return '+ ${formatedNumber.format(result)} %';
  }
}
