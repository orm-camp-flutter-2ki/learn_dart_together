import '../dto/store_dto.dart';
import '../model/store.dart';

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      createdAt: createdAt ?? '',
      lat: lat ?? -1,
      lng: lng ?? -1,
      name: name ?? 'your name',
      remainStat: remainStat ?? '',
      stockAt: stockAt ?? '',
      type: type ?? '',
    );
  }
}

Map<String, dynamic> maskMap = {
  "count": 222,
  "stores": [
    {
      "addr": "�쒖슱�밸퀎�� 媛뺣턿援� �붾ℓ濡� 38 (誘몄븘��)",
      "code": "11817488",
      "created_at": "2020/07/03 11:00:00",
      "lat": 37.6254369,
      "lng": 127.0164096,
      "name": "�뱀빟援�",
      "remain_stat": "plenty",
      "stock_at": "2020/07/02 18:05:00",
      "type": "01"
    },
  ]
};
