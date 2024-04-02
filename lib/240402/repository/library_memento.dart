// LibraryMemento 클래스: Library의 상태를 저장하고 복원하기 위한 클래스




import '../model/book.dart';
import '../model/member.dart';
import 'library.dart';

class LibraryMemento {
  List<Book> books;
  List<Member> members;

  LibraryMemento(this.books, this.members);

  // 현재 Library의 상태를 저장하는 팩토리 메서드
  factory LibraryMemento.fromLibrary(Library library) {
    return LibraryMemento(List.of(library.books), List.of(library.members));
  }

  // 저장된 상태를 Library에 복원하는 메서드
  void restore(Library library) {
    library.books = books;
    library.members = members;
  }
}
