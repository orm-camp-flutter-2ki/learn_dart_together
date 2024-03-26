import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/user/user.dart';
import 'package:learn_dart_together/240326/repository/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final String _apiUrl =  'https://jsonplaceholder.typicode.com/users';

  @override
  Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      List<User> users = jsonList.map((e) => User.fromJson(e)).toList();

      // Sort users by username
      users.sort((a, b) => a.username.compareTo(b.username));

      // Get top 10 users by username
      return users.take(10).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}

Future<void> main() async {
  // UserRepositoryImpl 인스턴스 생성
  UserRepositoryImpl userRepository = UserRepositoryImpl();

  try {
    // Get list of users
    List<User> users = await userRepository.getUsers();
    print('List of users:');
    users.forEach((user) => print(user));

    // Get top 10 users by username
    List<User> top10Users = await userRepository.getUsersTop10ByUserName();
    print('\nTop 10 users by username:');
    top10Users.forEach((user) => print(user.username));
  } catch (e) {
    print('Error: $e');
  }
}
