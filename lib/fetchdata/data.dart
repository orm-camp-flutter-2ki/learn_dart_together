// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:learn_dart_together/fetchdata/user.dart';

class Data {
  List<User> userList;

  Data(this.userList);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userList': userList.map((e) => e.toJson()).toList(),
    };
  }

  // List<dynamic> -> List<User>로 형변환
  Data.fromJson(List<dynamic> userList) : userList = (userList).map((e) => User.fromJson(e)).toList();
}
