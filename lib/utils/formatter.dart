import 'package:intl/intl.dart';

class Formatter {
  static currencyFormatter(double value) {
    final formatedNumber =
        NumberFormat.currency(locale: 'pt-BR', customPattern: 'R\$ ##,###.###',decimalDigits: 2);
    return formatedNumber.format(value);
  }

  
}
