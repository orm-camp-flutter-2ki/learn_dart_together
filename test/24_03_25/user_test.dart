import 'package:learn_dart_together/24_03_25/data_source/user.dart';
import 'package:learn_dart_together/24_03_25/data_source/user_api.dart';

void main() async{

  final List<User> userList = await UserApi().getTodos();
  print(userList);

}