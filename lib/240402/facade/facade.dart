abstract interface class Facade {
  Future<String> loanBook(int userId, int bookId);

  void returnBook(int userId, int bookId);

  void delayBook(int userId, int bookId);
}
