import 'dart:io';

import 'package:learn_dart_together/240325/data_source/api/asset_api.dart';
import 'package:learn_dart_together/240325/data_source/api/todo_api.dart';
import 'package:learn_dart_together/240325/data_source/api/user_api.dart';
import 'package:learn_dart_together/240325/data_source/api/xml_api.dart';
import 'package:learn_dart_together/240325/data_source/todo.dart';
import 'package:learn_dart_together/240325/data_source/user.dart';
import 'package:test/test.dart';

TodoApi todoApi = TodoApi();
void main() {
  test('exercise1', () async {
    // Given
    Todo todo = await todoApi.getTodo(1);

    // When
    bool result1 = todo.userId == 1;
    bool result2 = todo.id == 1;
    bool result3 = todo.title == 'delectus aut autem';
    bool result4 = todo.completed == false;

    // Then
    expect(result1, isTrue);
    expect(result2, isTrue);
    expect(result3, isTrue);
    expect(result4, isTrue);
  });

  test('exercise2', () async {
    // Given
    List<Todo> todos = await todoApi.getTodos();

    // When
    bool result1 = todos[0].userId == 1;
    bool result2 = todos[0].id == 1;
    bool result3 = todos[0].title == 'delectus aut autem';
    bool result4 = todos[0].completed == false;

    // Then
    expect(result1, isTrue);
    expect(result2, isTrue);
    expect(result3, isTrue);
    expect(result4, isTrue);
  });
  test('exercise3', () async {
    // Given
    UserApi userApi = UserApi();
    List<User> userList = await userApi.getUsers();

    // When
    bool result1 = userList[0].id == 1;
    bool result2 = userList[0].name == 'Leanne Graham';
    bool result3 = userList[0].userName == 'Bret';
    bool result4 = userList[0].email == 'Sincere@april.biz';
    bool result5 = userList[0].adress?.street == 'Kulas Light';
    bool result6 = userList[0].adress?.suite == 'Apt. 556';
    bool result7 = userList[0].adress?.geo['lat'] == '-37.3159';
    bool result8 = userList[0].adress?.geo['lng'] == '81.1496';
    bool result9 = userList[0].company.name == 'Romaguera-Crona';
    bool result10 = userList[0].company.catchPhrase == 'Multi-layered client-server neural-net';

    // Then
    expect(result1, isTrue);
    expect(result2, isTrue);
    expect(result3, isTrue);
    expect(result4, isTrue);
    expect(result5, isTrue);
    expect(result6, isTrue);
    expect(result7, isTrue);
    expect(result8, isTrue);
    expect(result9, isTrue);
    expect(result10, isTrue);
  });
  test('exercise4', () async {
    // Given
    XmlApi().getXmlData();

    // When

    // Then
  });
  test('exercise5', () async {
    // Given
    AssetApi assetApi = AssetApi();

    // When
    bool result1 = assetApi.getAsset()[0].symbol == 'A';
    bool result2 = assetApi.getAsset()[0].name == 'Agilent Technologies Inc';
    bool result3 = assetApi.getAsset()[0].exchange == 'NYSE';
    bool result4 = assetApi.getAsset()[0].assetType == 'Stock';
    bool result5 = assetApi.getAsset()[0].ipoDate == '1999-11-18';
    bool result6 = assetApi.getAsset()[0].delistingDate == 'null';
    bool result7 = assetApi.getAsset()[0].status == 'Active';

    // Then
    expect(result1, isTrue);
    expect(result2, isTrue);
    expect(result3, isTrue);
    expect(result4, isTrue);
    expect(result5, isTrue);
    expect(result6, isTrue);
    expect(result7, isTrue);
  });
}
