import 'package:learn_dart_together/240325/data_source/subwayApi.dart';
import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:learn_dart_together/240325/data_source/user_api.dart';

void main() async {
  TodoApi todoApi = TodoApi();
  UserApi userApi = UserApi();

  // 과제 1
  // todoApi.jsonToDataClass();

  // 과제 2
  // todoApi.listToListTodo();

  // 과제 3
  // userApi.jsonToList();

  SubwayApi subwayApi = SubwayApi();
  subwayApi.fromXml();
}


