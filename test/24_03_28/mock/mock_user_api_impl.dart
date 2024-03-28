import 'package:learn_dart_together/24_03_28/data_source/user_api.dart';
import 'package:learn_dart_together/24_03_28/model/user.dart';
import 'package:mockito/mockito.dart';

class MockUserApiImpl extends Mock implements UserApi {
  final List<User> users = [
    User(
        name: '성종호',
        email: 'whdgh123@gmail.com',
        latitude: 1.1313,
        longitude: 0.1312),
    User(
        name: '곽튜브',
        email: 'tube@gmail.com',
        latitude: 1.1313,
        longitude: 0.1312),
  ];

  @override
  Future<List<User>> getUsers() async {
    return super.noSuchMethod(Invocation.getter(#getUsers),
        returnValue: users, returnValueForMissingStub: users);
  }
}
