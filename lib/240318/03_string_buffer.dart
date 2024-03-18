void main() {
  final buffer = StringBuffer('dart');

  buffer
    ..write(' and ')
    ..write('Flutter');

  print(buffer.toString());
}