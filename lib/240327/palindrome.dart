bool palindrinme(String text) {
  String reverse = text.split('').reversed.join();

  if (text == reverse) {
    return true;
  } else {
    return false;
  }
}
