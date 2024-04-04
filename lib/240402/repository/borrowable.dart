abstract interface class Borrowable {
  bool borrow();

  bool renew();

  bool returnBook();

  bool isAvailable();
}
