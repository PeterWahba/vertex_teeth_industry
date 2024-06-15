import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class MethodsClassUTls {
  //

  static String formatNumber({required double number, int? numberAfterdot}) {
    String formattedString = number.toStringAsFixed(
        number.truncateToDouble() == number ? 0 : numberAfterdot ?? 2);
    formattedString.endsWith(numberAfterdot != null ? ".0" : ".00")
        ? formattedString.split(".")[0]
        : formattedString;

    //
    // Create a NumberFormat instance for formatting numbers with commas
    final formatter = NumberFormat('#,##0', 'en_US');

    // Format the number with commas
    return formatter.format(number);
  }

  //
  static String convertToTimeAgo(String date) {
    // Parse the date string into a DateTime object
    DateTime dateTime = DateTime.parse(date);

    // Get the current date
    DateTime now = DateTime.now();

    // final ar = timeago.setLocaleMessages('ar', timeago.ArMessages());

    // Use the timeago package to format the DateTime object
    return timeago.format(
      dateTime,
      // locale: 'ar_short',
      locale: 'en_short',
      clock: now,
      allowFromNow: true,
    );

    //
    // print('\n');
    // print('================================================');
    // print('The Time ago is $reslt and index is $index ');
    // print('==================================================');
    // print('\n');
  }

  // End Class
}
