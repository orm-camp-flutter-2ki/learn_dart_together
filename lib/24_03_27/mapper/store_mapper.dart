import 'package:learn_dart_together/24_03_27/dto/store_dto.dart';
import 'package:learn_dart_together/24_03_27/model/store.dart';

// {
// "count": 222,
// "stores": [
// {
// "addr": "서울특별시 강북구 솔매로 38 (미아동)",
// "code": "11817488",
// "created_at": "2020/07/03 11:00:00",
// "lat": 37.6254369,
// "lng": 127.0164096,
// "name": "승약국",
// "remain_stat": "plenty",
// "stock_at": "2020/07/02 18:05:00",
// "type": "01"
// },
// ]
// }

extension StoreDtoToStore on StoreDto {
  Store toStore() {
    return Store(
      addr: addr ?? '',
      code: code ?? '',
      createdAt: createdAt ?? '',
      lat: lat ?? -1,
      lng: lng ?? -1,
      name: name ?? '',
      remainStat: remainStat ?? '',
      stockAt: stockAt ?? '',
      type: type ?? '',
    );
  }
}
