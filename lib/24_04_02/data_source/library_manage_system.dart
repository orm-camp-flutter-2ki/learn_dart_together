import 'dart:io';

import 'package:learn_dart_together/24_04_02/model/member.dart';
import 'package:learn_dart_together/24_04_02/model/rent.dart';
import 'package:learn_dart_together/24_04_02/repository/book_repository_implement.dart';
import 'package:learn_dart_together/24_04_02/repository/member_repository_implement.dart';
import 'package:learn_dart_together/24_04_02/repository/rent_repository_implement.dart';

import '../../24_04_02/model/book.dart';

void addingBook(BookRepositoryImplement bookRepo) {
  stdout.write("Enter book title: ");
  String title = stdin.readLineSync() ?? '';
  stdout.write("Enter author name: ");
  String author = stdin.readLineSync() ?? '';
  stdout.write("Enter ISBN: ");
  String isbn = stdin.readLineSync() ?? '';
  stdout.write("Enter publication year: ");
  int year = int.tryParse(stdin.readLineSync() ?? '') ?? DateTime.now().year;

  Book newBook = Book(title, author, isbn, year);
  bookRepo.addBook(newBook);
  print("Book added successfully.");
}

void addingMember(MemberRepositoryImplement memberRepo) {
  stdout.write("Enter member name: ");
  String name = stdin.readLineSync() ?? '';
  stdout.write("Enter contact number: ");
  String contactNumber = stdin.readLineSync() ?? '';
  stdout.write("Enter email: ");
  String email = stdin.readLineSync() ?? '';
  stdout.write("Enter member ID: ");
  int memberId = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  Member newMember = Member(name, contactNumber, email, memberId);
  memberRepo.addMember(newMember);
  print("Member added successfully.");
}

void addingRent(RentRepositoryImplement rentRepo,
    BookRepositoryImplement bookRepo, MemberRepositoryImplement memberRepo) {
  if (bookRepo.getAllBooks().isEmpty || memberRepo.getAllMembers().isEmpty) {
    print("No books or members found. Please add some first.");
    return;
  }

  print("Select a member by ID:");
  for (var member in memberRepo.getAllMembers()) {
    print("Member ID: ${member.memberId}, Name: ${member.name}");
  }
  stdout.write("Enter Member ID: ");
  int selectedMemberId = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
  Member? selectedMember = memberRepo.findMemberById(selectedMemberId);
  if (selectedMember == null) {
    print("Member not found.");
    return;
  }

  print("Select a book by ISBN:");
  for (var book in bookRepo.getAllBooks()) {
    print("ISBN: ${book.isbn}, Title: ${book.title}");
  }
  stdout.write("Enter Book ISBN: ");
  String selectedIsbn = stdin.readLineSync() ?? '';
  Book? selectedBook = bookRepo.findBookByIsbn(selectedIsbn);
  if (selectedBook == null) {
    print("Book not found.");
    return;
  }

  Rent newRent = Rent(selectedBook, selectedMember, DateTime.now());
  rentRepo.addRent(newRent);
  print("Rent added successfully.");
}

void extendRent(RentRepositoryImplement rentRepo) {
  stdout.write("Enter member ID to extend rent for: ");
  int memberId = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  stdout.write("Enter ISBN of the book to extend rent for: ");
  String isbn = stdin.readLineSync() ?? '';
  if (rentRepo.extendRent(memberId, isbn)) {
    print("Rent extended successfully.");
  } else {
    print(
        "Failed to extend rent. Make sure the rent exists and hasn't been extended already.");
  }
}

void showRentsSortedByDueDate(RentRepositoryImplement rentRepo) {
  List<Rent> sortedRents = rentRepo.getRentsSortedByDueDate();
  if (sortedRents.isEmpty) {
    print("No rents to show.");
    return;
  }
  print("Rents sorted by due date:");
  for (var rent in sortedRents) {
    print(rent.toString());
  }
}

void main() {
  BookRepositoryImplement bookRepo = BookRepositoryImplement();
  MemberRepositoryImplement memberRepo = MemberRepositoryImplement();
  RentRepositoryImplement rentRepo = RentRepositoryImplement();

  while (true) {
    print("\nMenu:");
    print("1. Add book");
    print("2. Add member");
    print("3. Add rent");
    print("4. Extend rent");
    print("5. Show rents sorted by due date");
    print("6. Exit");
    stdout.write("Enter your choice: ");
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        addingBook(bookRepo);
        break;
      case '2':
        addingMember(memberRepo);
        break;
      case '3':
        addingRent(rentRepo, bookRepo, memberRepo);
        break;
      case '4':
        extendRent(rentRepo);
        break;
      case '5':
        showRentsSortedByDueDate(rentRepo);
        break;
      case '6':
        print("Exiting...");
        return;
      default:
        print("Invalid choice. Please enter a number between 1 and 6.");
    }
  }
}
