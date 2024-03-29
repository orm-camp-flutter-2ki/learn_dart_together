import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240327/practice5_mask.dart';

class MaskApi {
  Future<Mask> getMaskApi() async {
    final response =
        await http.get(Uri.parse('http://104.198.248.76:3000/mask'));

    return Mask.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}
// //
// Map<String, dynamic> str =
// {
//   "count": 222,
//   "stores": [
//   {
//     "addr": "�쒖슱�밸퀎�� 媛뺣턿援� �붾ℓ濡� 38 (誘몄븘��)",
//     "code": "11817488",
//     "created_at": "2020/07/03 11:00:00",
//     "lat": 37.6254369,
//     "lng": 127.0164096,
//     "name": "�뱀빟援�",
//     "remain_stat": "plenty",
//     "stock_at": "2020/07/02 18:05:00",
//     "type": "01"
//   },
//   {
//     "addr": "�쒖슱�밸퀎�� 媛뺣턿援� �쇱뼇濡� 247 3痢� (誘몄븘��)",
//     "code": "12856941",
//     "created_at": "2020/07/03 11:00:00",
//     "lat": 37.6255182,
//     "lng": 127.017747,
//     "name": "��吏��쎄뎅",
//     "remain_stat": "plenty",
//     "stock_at": "2020/07/03 10:45:00",
//     "type": "01"
//   },
// }
