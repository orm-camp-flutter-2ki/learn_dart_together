import 'dart:io';
import 'package:csv/csv.dart';

abstract class Borrowable {
  bool borrow();
  bool renew();
  bool returnBook();
  bool isAvailable();
}

class Book implements Borrowable {
  String title;
  String author;
  DateTime? publishDate;
  bool borrowed = false;
  DateTime? borrowDate;
  DateTime? returnDate;
  int renewalCount = 0;

  Book(this.title, this.author, this.publishDate);

  @override
  bool borrow() {
    if (!borrowed) {
      borrowed = true;
      borrowDate = DateTime.now();
      returnDate = borrowDate!.add(Duration(days: 14));
      return true;
    } else {
      print('이 책은 이미 대출 중입니다.');
      return false;
    }
  }

  @override
  bool renew() {
    if (borrowed && renewalCount < 1 && DateTime.now().isBefore(returnDate!)) {
      returnDate = returnDate!.add(Duration(days: 7));
      renewalCount++;
      return true;
    } else {
      print('대출 연장이 불가능합니다.');
      return false;
    }
  }

  @override
  bool returnBook() {
    if (borrowed) {
      borrowed = false;
      borrowDate = null;
      returnDate = null;
      return true;
    } else {
      print('이 책은 대출 중이 아닙니다.');
      return false;
    }
  }

  @override
  bool isAvailable() {
    return !borrowed;
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'author': author,
      'publishDate': publishDate != null ? '${publishDate!.year}-${publishDate!.month}-${publishDate!.day}' : '',
      'borrowed': borrowed,
      'borrowDate': borrowDate != null ? '${borrowDate!.year}-${borrowDate!.month}-${borrowDate!.day}' : '',
      'returnDate': returnDate != null ? '${returnDate!.year}-${returnDate!.month}-${returnDate!.day}' : '',
      'renewalCount': renewalCount
    };
  }
}

class Member {
  String name;
  DateTime? registrationDate;
  String address;
  String phoneNumber;
  DateTime? birthDate;

  Member(this.name, this.address, this.phoneNumber, this.birthDate);

  int? getAge() {
    if (birthDate != null) {
      var now = DateTime.now();
      var age = now.year - birthDate!.year;
      if (now.month < birthDate!.month || (now.month == birthDate!.month && now.day < birthDate!.day)) {
        age--;
      }
      return age;
    } else {
      return null; // 출생일이 설정되지 않은 경우 나이를 null로 반환
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'registrationDate': registrationDate != null ? '${registrationDate!.year}-${registrationDate!.month}-${registrationDate!.day}' : '',
      'address': address,
      'phoneNumber': phoneNumber,
      'birthDate': birthDate != null ? '${birthDate!.year}-${birthDate!.month}-${birthDate!.day}' : '',
      'age': getAge()
    };
  }
}

class Library {
  List<Book> books = [];
  List<Member> members = [];
  final String backupFileName = 'library_backup.csv';
  late List<LibraryMemento> mementos; // 메멘토 패턴 적용을 위한 멤버 변수

  Library() {
    mementos = [];
  }

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void borrowBook(Book book, Member member) {
    if (book.borrow()) {
      print('${member.name}님이 ${book.title}을 대출하셨습니다.');
    }
  }

  void renewBook(Book book) {
    book.renew();
    print('${book.title}의 대출 기간이 연장되었습니다.');
  }

  void returnBook(Book book) {
    book.returnBook();
    print('${book.title}을 반납하셨습니다.');
  }

  void displayAvailableBooks() {
    print('대출 가능한 책 목록:');
    for (var book in books) {
      if (book.isAvailable()) {
        print('${book.title} (${book.publishDate?.year}/${book.publishDate?.month}/${book.publishDate?.day})');
      }
    }
  }

  void displayDueBooks() {
    DateTime now = DateTime.now();
    List<Book> dueBooks = books.where((book) {
      if (book.borrowed && book.returnDate != null) {
        return now.isAfter(book.returnDate!);
      }
      return false;
    }).toList();
    dueBooks.sort((a, b) => a.returnDate!.compareTo(b.returnDate!));
    if (dueBooks.isNotEmpty) {
      print('반납 기한이 임박한 책 목록:');
      for (var book in dueBooks) {
        print('${book.title} - 반납 기한: ${book.returnDate}');
      }
    } else {
      print('반납 기한이 임박한 책이 없습니다.');
    }
  }
  void displayRecentBooks() {
    books.sort((a, b) => b.publishDate!.compareTo(a.publishDate!));
    print('최근 출간된 책 목록:');
    for (var book in books) {
      print('${book.title} (${book.publishDate?.year}/${book.publishDate?.month}/${book.publishDate?.day})');
    }
  }

  void displayMembersInfo() {
    print('회원 정보:');
    for (var member in members) {
      print('이름: ${member.name}, 나이: ${member.getAge()}, 주소: ${member.address}, 연락처: ${member.phoneNumber}');
    }
  }

  // 백업 기능: CSV 파일로 저장
  void backup() {
    try {
      File file = File(backupFileName);
      String csvContent = const ListToCsvConverter().convert(
        [
          ['Title', 'Author', 'Publish Date', 'Borrowed', 'Borrow Date', 'Return Date', 'Renewal Count']
        ] +
            books.map((book) => [
              book.title,
              book.author,
              book.publishDate != null ? '${book.publishDate!.year}-${book.publishDate!.month}-${book.publishDate!.day}' : '',
              book.borrowed.toString(),
              book.borrowDate != null ? '${book.borrowDate!.year}-${book.borrowDate!.month}-${book.borrowDate!.day}' : '',
              book.returnDate != null ? '${book.returnDate!.year}-${book.returnDate!.month}-${book.returnDate!.day}' : '',
              book.renewalCount.toString()
            ]).toList(),
      );

      file.writeAsStringSync(csvContent);

      print('Backup completed: $backupFileName');
    } catch (e) {
      print('Error occurred while creating backup: $e');
    }
  }

  // 백업된 파일 불러오기
  void importBackup() {
    try {
      File file = File(backupFileName);
      String csvContent = file.readAsStringSync();
      List<List<dynamic>> csvList = CsvToListConverter().convert(csvContent);

      // 첫 번째 행은 컬럼명이므로 제외하고 책 정보 추가
      for (int i = 1; i < csvList.length; i++) {
        List<dynamic> row = csvList[i];
        Book book = Book(
          row[0].toString(),
          row[1].toString(),
          DateTime.tryParse(row[2].toString()),
        );
        book.borrowed = row[3].toString().toLowerCase() == 'true';
        book.borrowDate = row[4].toString().isEmpty ? null : DateTime.tryParse(row[4].toString());
        book.returnDate = row[5].toString().isEmpty ? null : DateTime.tryParse(row[5].toString());
        book.renewalCount = int.tryParse(row[6].toString()) ?? 0;
        books.add(book);
      }

      print('Backup imported successfully: $backupFileName');
    } catch (e) {
      print('Error occurred while importing backup: $e');
    }
  }

  // 회원 삭제 기능
  void deleteMember(Member member) {
    mementos.add(LibraryMemento.fromLibrary(this)); // 현재 상태를 메멘토로 저장
    members.remove(member);
  }

  // 회원 삭제 실수 방지를 위한 복구 기능
  void undoDelete() {
    if (mementos.isNotEmpty) {
      LibraryMemento memento = mementos.removeLast(); // 가장 최근의 메멘토 복구
      memento.restore(this);
    }
  }
}

// LibraryMemento 클래스: Library의 상태를 저장하고 복원하기 위한 클래스
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

void main() {
  Library library = Library();

  // 책 등록
  library.addBook(Book('학교에서 알려주지 않는 17가지 실무 개발 기술', '이기곤', DateTime(2020, 4, 16)));
  library.addBook(Book('개발자의 글쓰기', '김철수', DateTime(2019, 10, 4)));
  library.addBook(Book('오준석의 플러터 생존코딩', '오준석', DateTime(2021, 5, 28)));

  // 회원 등록
  library.addMember(Member('이성순', '서울시 강남구', '010-1916-0229', DateTime(1916, 2, 29)));
  library.addMember(Member('김두한', '서울시 종로구', '010-1918-0623', DateTime(1918, 6, 23)));

  // 회원 대출
  library.borrowBook(library.books[0], library.members[0]);
  library.borrowBook(library.books[1], library.members[1]);

  // 예시를 위해 반납 임박한 책 생성
  library.books[0].returnDate = DateTime.now().subtract(Duration(days: 1));

  print('\n--- 반납 기한이 임박한 책 목록 ---');
  library.displayDueBooks();

  print('\n--- 대출 가능한 책 목록 ---');
  library.displayAvailableBooks();

  print('\n--- 최근 출간된 책 목록 ---');
  library.displayRecentBooks();

  print('\n--- 회원 정보 ---');
  library.displayMembersInfo();

  // 백업 생성
  library.backup();

  // 회원 삭제 및 복구
  Member memberToDelete = library.members[0];
  library.deleteMember(memberToDelete);
  print('\n--- 회원 삭제 후 정보 ---');
  library.displayMembersInfo();

  // 회원 삭제 실수로 복구
  print('\n--- 회원 삭제 복구 ---');
  library.undoDelete();
  library.displayMembersInfo();
}