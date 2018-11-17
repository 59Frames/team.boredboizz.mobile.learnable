import 'package:date_format/date_format.dart' as formatter;

String getLongDateString(DateTime date) =>
  date != null
      ? formatter.formatDate(date, [formatter.d, ' ', formatter.M, ' ', formatter.yyyy])
      : "";

String getShortDateString(DateTime date) =>
    date != null
      ? formatter.formatDate(date, [formatter.d, '.', formatter.m, '.', formatter.yyyy])
      : "";
String getNumberedDateString(DateTime date) =>
    date != null
      ? formatter.formatDate(date, [formatter.yyyy, '-', formatter.mm, '-', formatter.dd])
      : "";

String getTimeString(DateTime date) =>
    date != null
      ? formatter.formatDate(date, [formatter.HH, ':', formatter.nn])
      : "";

bool isOnSameDay(DateTime a, DateTime b) =>
    getShortDateString(a) == getShortDateString(b);

bool isOnSameDayShort(String day, DateTime a) =>
    day == getShortDateString(a);

bool isOnSameDayLong(String day, DateTime a) =>
    day == getLongDateString(a);

int getWeekOfYear() {
  final date = DateTime.now();
  final startOfYear = new DateTime(date.year, 1, 1, 0, 0);
  final firstMonday = startOfYear.weekday;
  final daysInFirstWeek = 8 - firstMonday;
  final diff = date.difference(startOfYear);
  var weeks = ((diff.inDays - daysInFirstWeek) / 7).ceil();
  // It might differ how you want to treat the first week
  if(daysInFirstWeek > 3) {
    weeks += 1;
  }
  return weeks;
}