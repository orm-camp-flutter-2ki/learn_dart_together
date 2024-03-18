void main() {
  StringBuffer string = StringBuffer('Dart is fun');    // 불변

  // 값이 바뀌었냐? yes, no
  string.write('Hello');

  final stopwatch = Stopwatch();
  stopwatch.start();

  for(int i = 0; i < 100000; i++) {
    string.write(i.toString());
    // new String(Hello0)
    // Hello01 ... Hello012346;
  }
  stopwatch.stop();

  print(stopwatch.elapsed);

  // String string = 'Dart is fun';    // 불변
  //
  // // 값이 바뀌었냐? yes, no
  // string = 'Hello';
  //
  // Stopwatch stopwatch = Stopwatch()..start();
  // for(int i = 0; i < 100000; i++) {
  //   string = string + i.toString();
  //   // new String(Hello0)
  //   // Hello01 ... Hello012346;
  // }
  // stopwatch.stop();
  //
  // print(stopwatch.elapsed);


  // print(string.substring(0, 4)); // 'Dart'
  //
  // print(string);  // Dart

  // String text = 'Dart';
  // print(text.hashCode);
  //
  // text = '$text and';
  // print(text.hashCode);
  //
  // text = '$text Flutter';
  // print(text.hashCode);

  // print(text);


  // final items = [2, 1, 3];
  //
  // final List<int> sortedItems = items..sort();
  //
  // final name = '홍길동';
  //
  // final result = name.toString()
  //     .padLeft(2, '0')
  //     .replaceAll('홍', '김');
}