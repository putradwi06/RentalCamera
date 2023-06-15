import 'package:intl/intl.dart';

String konversiKeRupiah(int nominal) {
  final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp.', decimalDigits: 0);
  return formatter.format(nominal);
}

