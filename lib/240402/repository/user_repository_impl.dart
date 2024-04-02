import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:learn_dart_together/240402/repository/user_repository.dart';

import '../model/user.dart';

class UserRepositoryImpl implements UserRepository {
  String filePath = 'assets/data/user_data.json';

  @override
  delayBook(int userId, int bookId) {}

  @override
  Future<List<User>> getUsers() async {
    final file = File(filePath);
    final bool isExist = await file.exists();

    if (!isExist) {
      return [];
    }

    final getUser = await file.readAsString();

    final jsonData = jsonDecode(getUser) as List;

    List<User> users = jsonData.map((e) => User.fromJson(e)).toList();

    return users;
  }

  @override
  Future<String> loanBook(int userId, int bookId) async {
    final users = await getUsers();
    final user = users.firstWhere((element) => element.id == userId);
    User newUser = user.copyWith(isReturned: true);

    await writeFile(newUser);

    return '${user.name}이/가 대출을 성공했습니다...';
  }

  @override
  loanHistory(int userId) {
    // TODO: implement loanHistory
    throw UnimplementedError();
  }

  @override
  returnBook(int userId, int bookId) async {
    // TODO: 책을 반납합니다.
    final users = await getUsers();
    final user = users.firstWhere((e) => e.id == userId);
  }

  @override
  signOut(int userId) {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(User userInfo) async {
    final File file = File(filePath);
    bool isExist = await file.exists();

    if (!isExist) {
      List<Map<String, dynamic>> userData = [];

// 새로운 사용자 정보 추가
      await addNewUser(userInfo, userData);
    } else {
      final String content = await file.readAsString();
      final userList = jsonDecode(content) as List;
      List<Map<String, dynamic>> userData = List.from(userList);

// 새로운 사용자 정보 추가
      await addNewUser(userInfo, userData);
    }
  }

  Future<void> addNewUser(
      User userInfo, List<Map<String, dynamic>> userData) async {
    Map<String, dynamic> newUser = {
      "id": userInfo.id,
      "signupDate": userInfo.signupDate,
      "name": userInfo.name,
      "address": userInfo.address,
      "phoneNumber": userInfo.phoneNumber,
      "birth": userInfo.birth,
      "bookIds": userInfo.bookIds
    };

    userData.add(newUser);

// JSON 문자열로 변환
    String jsonString = jsonEncode(userData);

    await File(filePath).writeAsString(jsonString);
  }

  @override
  Future<String> readFile() async {
    File json = File(filePath);
    final users = await json.readAsString();
    return users;
  }

  @override
  Future<void> writeFile<T>(T user) async {
    File file = File(filePath);
    final users = await getUsers();

    if (user is User) {
      final index = users.indexWhere((element) => element.id == user.id);
      if (index != -1) {
//파일이 아무것도 없으면
        users[index] = user;
        await file
            .writeAsString(jsonEncode(users.map((e) => e.toJson()).toList()));
      }
    }

    List<List<dynamic>> rows = [];
    rows.add([
      "Id",
      "name",
      "signupDate",
      "address",
      "phoneNumber",
      "birth",
      "bookIds",
      "isDelayed",
      "isReturned"
    ]);

    for (User user in users) {
      rows.add([
        user.id,
        user.name,
        user.signupDate,
        user.address,
        user.phoneNumber,
        user.birth,
        user.bookIds,
        user.isDelayed,
        user.isReturned,
      ]);
    }
    String csvData = ListToCsvConverter().convert(rows);

    await File(filePath).writeAsString(csvData);
  }
}
