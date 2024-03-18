void main() {
  final s1 = 'Dart';

  DateTime dateTime = DateTime.now();

  // if (dateTime.month < 10) {
  //   print('${dateTime.year}-0${dateTime.month}-${dateTime.day}');
  // } else {
  //   print('${dateTime.year}-${dateTime.month}-${dateTime.day}');
  // }

  print(
      '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}');

  // 2024-01-01
}
