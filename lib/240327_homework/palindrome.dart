import 'package:collection/collection.dart';

void main() {
  isPalindrome('hello');
  isPalindrome('racecar');
  isPalindrome('madam');
}

bool isPalindrome(String word) {
  word = word.toLowerCase();
  Function eq = const ListEquality().equals;

  List<String> myList = word.split('');
  List<String> reversedList = List.from(myList.reversed);
  print(
      "$word ${eq(myList, reversedList) ? 'is Palindrome' : 'is not Palindrome'}");
  return eq(myList, reversedList);
}
