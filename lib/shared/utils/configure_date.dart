import 'package:intl/intl.dart';

/**
 * Configure date to format yyyy-MM-dd
 * @param: DateTime date
 * @return: String
 */
String configureDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}
