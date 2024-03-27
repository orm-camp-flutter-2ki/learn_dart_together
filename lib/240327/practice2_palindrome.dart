Future<bool> palindrome(String givenText) async {
  List<String> splitTextList = givenText.split('');

  for (int i = 0; i < splitTextList.length; i++) {
    if (splitTextList[i] != splitTextList[splitTextList.length - 1 - i]) {
      return false;
    }
  }
  return true;
}

// void main() async {
//   bool result = await palindrome('car');
//   print(result);
// }
