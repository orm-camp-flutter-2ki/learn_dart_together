import 'dart:convert';

import 'package:learn_dart_together/240328/data_source/mask_api.dart';
import 'package:learn_dart_together/240328/data_source/user_api.dart';
import 'package:learn_dart_together/240328/model/store.dart';
import 'package:learn_dart_together/240328/model/user.dart';
import 'package:learn_dart_together/240328/repository/maskRepository.dart';
import 'package:learn_dart_together/240328/repository/maskRepositoryImpl.dart';
import 'package:learn_dart_together/240328/repository/userRepository.dart';
import 'package:learn_dart_together/240328/repository/userRepositoryImpl.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  test('practice1', () async {
    User testUser = User(
        name: 'Leanne Graham',
        email: 'Sincere@april.biz',
        latitude: -37.3159,
        longitude: 81.1496);
    UserRepository userRepository = UserRepositoryImpl();
    final test = await userRepository.getUsers();
    expect(test[0] == testUser, true);
  });
}
