import 'package:learn_dart_together/240327/practice5_mask_repository.dart';

void main() {
  final maskRepository = MaskRepository();

  final mask = maskRepository.getMaskInfo();
  print(mask);
  // test('Mask data 가져오기', () {
  //   final maskRepository = MaskRepository();
  //
  //   final mask = maskRepository.getMaskInfo();
  // });
}
// void main() async {
//   final userRepository = UserRepositoryImpl();
//
//   final user = await userRepository.getUsers();
//   print(user.length);
//   // print(user);
//
//   final List<User> usersTop10 = await userRepository.getUsersTop10ByUserName();
//   print(usersTop10.length);
//   print(usersTop10.map((e) => e.username));
// }
