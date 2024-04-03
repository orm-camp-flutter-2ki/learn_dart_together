import 'dart:io';

import '../model/book.dart';
import '../model/user.dart';

class LibraryDataSource {

  final String _userFileName = 'lib/24_04_02/file/user.csv';
  final String _bookFileName = 'lib/24_04_02/file/book.csv';
  final String _historyFileName = 'lib/24_04_02/file/history.csv';

  Future<List<User>> searchUsers() async {
    final File file = File(_userFileName);
    List<String> readAsLines = await file.readAsLines();
    List<User> users = [];

    for (int i = 1; i < readAsLines.length; i++) {
      List<String> currLine = readAsLines[i].split(',');
      users.add(User(
          id: int.parse(currLine[0]),
          name: currLine[1],
          address: currLine[2],
          phone: currLine[3],
          signUpDate: currLine[4],
          birth: currLine[5]));
    }

    return users;
  }

  void addUser(User user) async {
    final File file = File(_userFileName);
    List<String> readAsLines = await file.readAsLines();
    file.writeAsString(
      '${(int.parse(readAsLines.last.split(',')[0]) + 1).toString()}, ${user.name}, ${user.address}, ${user.phone}, ${user.signUpDate}, ${user.birth}\n',
      mode: FileMode.writeOnlyAppend,
    );
  }

  Future<void> editUser(int id) async {
    final File file = File(_userFileName);
    List<String> readAsLines = await file.readAsLines();

    print('수정할 번호를 입력해 주세요.');
    String newPhoneNumber = stdin.readLineSync() ?? '';

    for (int i = 1; i < readAsLines.length; i++) {
      List<String> split = readAsLines[i].split(',');
      if (int.parse(split[0]) == id) {
        split[3] = ' $newPhoneNumber';
        readAsLines[i] = split.join(',');
        break;
      }
    }

    print(readAsLines);

    file.writeAsString('');
    IOSink sink = file.openWrite(mode: FileMode.writeOnly);

    for (String line in readAsLines) {
      sink.writeln(line);
    }
  }

  void deleteUser(int id) async {
    File file = File(_userFileName);
    List<String> readAsLines = await file.readAsLines();

    readAsLines
        .removeWhere((element) => element.split(',')[0] == id.toString());
    file.writeAsString('');
    IOSink sink = file.openWrite(mode: FileMode.writeOnly);

    for (String line in readAsLines) {
      sink.writeln(line);
    }
  }

  void undo(int id) {}

  Future<List<Book>> searchBooks() async {
    File file = File(_bookFileName);
    List<String> readAsLines = await file.readAsLines();
    List<Book> books = [];

    for (int i = 1; i < readAsLines.length; i++) {
      List<String> currLine = readAsLines[i].split(',');
      books.add(Book(
          id: int.parse(currLine[0]),
          title: currLine[1],
          author: currLine[2],
          isAble: currLine[3] == ' true' ? true : false,
          publishDate: currLine[4]));
    }

    return books;
  }
}
