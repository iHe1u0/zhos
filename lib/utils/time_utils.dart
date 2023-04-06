/// Time utils
class TimeUtils {
  /// convert utc time to local time
  static String formatUTCTime([String? localTime]) {
    localTime ??= DateTime.now().toString();
    var dateTime = DateTime.parse(localTime);
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} "
        "${dateTime.hour}:${dateTime.minute}:${dateTime.second}";
  }
}
