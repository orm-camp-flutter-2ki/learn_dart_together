class Palindrome {
  String word;

  Palindrome(this.word);

  bool isPalindrome() {
    // Remove non-alphanumeric characters and convert to lowercase
    String cleanWord = word.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase();

    // Check if the clean word is equal to its reverse
    return cleanWord == cleanWord.split('').reversed.join('');
  }
}
