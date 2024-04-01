// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// class PhotoApi {
//   final _baseUrl = 'https://pixabay.com/api';
//
//   Future<PhotoDto> getPhoto(String apiKey, String q, String type) async {
//     final http.Response response = await http.get(Uri.parse(
//   '$_baseUrl/?key=$apiKey&q=$q&image_type=$type'));
//
//   // *json데이터를 Map형태로 변환
//   final Map<String, dynamic> json = jsonDecode(response.body);
//   return json;
//
// }
// void main(){
//
// }
// Your API key: 43171021-f50a4afae94abce23d49af9e9
// https://pixabay.com/api/

//Get
// STEP1. get요청 (인자
// - Parameter q:
//   A URL encoded search term. If omitted, all images are returned.
//   This value may not exceed 100 characters.Example: "yellow+flower".
// - Parameter type:
//   Filter results by image type.
//   Accepted values: "all", "photo", "illustration", "vector"
//   Default: "all"
