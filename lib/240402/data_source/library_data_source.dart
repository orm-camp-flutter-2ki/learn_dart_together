class LibraryDataSource {
  final String bookInfo;
  final int bookQuantity;

  const LibraryDataSource({
    required this.bookInfo,
    required this.bookQuantity,
  });

  void addBookInfo() {
    bookQuantity = bookQuantity++;
  }
}
