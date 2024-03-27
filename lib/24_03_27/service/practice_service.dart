class PracticeService {
  bool isPalindrome(String text) {
    return text.toLowerCase() == text.toLowerCase().split('').reversed.join();
  }
}