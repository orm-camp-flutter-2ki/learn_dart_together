import 'package:collection/collection.dart';

void main() {
  isPalindrome('hello');
  isPalindrome('racecar');
  isPalindrome('madam');
}

bool isPalindrome(String word) {
  List<String> myList = word.split('');
  Function eq = const ListEquality().equals;
  // myList를 뒤집어 순서가 바뀐 iterable을 형성하고 그것으로 새로운 리스트 객체를 만든다.
  List<String> reversedList = List.from(myList.reversed);
  print(
      "$word ${eq(myList, reversedList) ? 'is Palindrome' : 'is not Palindrome'}");
  return eq(myList, reversedList);
}
