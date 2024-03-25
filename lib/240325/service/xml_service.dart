import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class XmlService {

  Future<String> callGet(url) async {
    final myTransformer = Xml2Json();
    final response = await http.get(Uri.parse(url))
        .onError((error, stackTrace) => throw Exception('에러 발생 : $error'));
    myTransformer.parse(response.body);
    final utf16Body = utf8.decode(response.bodyBytes);
    myTransformer.parse(utf16Body);
    final result = myTransformer.toParker();

    return result;
  }
}