import 'dart:convert';
import 'dart:io';

void main() {
  print("Enter your name?");
  String name = stdin.readLineSync(encoding: utf8)!;

  print('Hello, $name! \nWelcome to Dart!');
}
