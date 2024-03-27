import 'package:learn_dart_together/24_03_27/mask.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract interface class MaskApi {
  http.Client client;

  Future<List<Store>> getStores();

  MaskApi(this.client);
}

class MaskApiImpl implements MaskApi {
  final _baseUri = 'http://104.198.248.76:3000/mask';

  @override
  http.Client client;

  MaskApiImpl(this.client);

  @override
  Future<List<Store>> getStores() async {
    final http.Response response = await client.get(Uri.parse(_baseUri));
    Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Http request 오류');

    return (json['stores'] as List).map((e) => Store.fromJson(e)).toList();
  }
}

abstract interface class MaskRepository {
  MaskApi api;

  MaskRepository(this.api);

  Future<List<Store>> getStores();
}

class MaskRepositoryImpl implements MaskRepository {
  @override
  MaskApi api;

  MaskRepositoryImpl(this.api);

  @override
  Future<List<Store>> getStores() async {
    List<Store> masks = [];
    try {
      masks.addAll(await api.getStores());
    } catch (e) {
      print(e.toString());
      rethrow;
    }
    return masks;
  }
}
