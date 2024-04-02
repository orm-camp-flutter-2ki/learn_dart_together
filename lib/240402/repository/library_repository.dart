abstract interface class LibraryRepository {
  Future<String> loanBook(int userId, int bookId);

  returnBook(int userId, int bookId);

  delayBook(int userId, int bookId);

  Future<String> readFile();

  Future<void> writeFile<T>(T data);
}
