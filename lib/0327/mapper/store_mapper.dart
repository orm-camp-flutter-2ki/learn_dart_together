import 'package:learn_dart_together/0327/dto/stores_dto.dart';
import 'package:learn_dart_together/0327/model/store.dart';

/// extension 을 사용해 기능을 분리
/// 앱에서 사용할 부분
extension StoreDtoToStore on StoreDto {
  // storeDto에 toStore() 메서드를 만드는 것, store의 인스턴스를 만들어 반환한다.
  // null일 경우 형 변환(toDouble..)이 되지 않는다.
  // lat: lat?.toDouble() ?? 0.0 // 만약 모델은 double, dto는 num일 경우
  Store toStore() {
    return Store(
      addr: addr ?? 'unknown', // 앞이 뱉는 모델, 뒤가 베이스 dto
      code: code ?? 'unknown',
      createdAt: created_at ?? 'unknown',
      lat: lat?.toDouble() ?? 0.0,
      lng: lng ?? 0.0,
      name: name ?? 'unknown',
      remainStat: remain_stat ?? 'unknown',
      stockAt: stock_at ?? 'unknown',
      type: type ?? 'unknown',
    );
  }
}

extension StoreToStoreDto on Store {
  StoreDto toStoreDto() {
    return StoreDto(
      addr: addr,
      code: code,
      created_at: createdAt,
      lat: lat,
      lng: lng,
      name: name,
      remain_stat: remainStat,
      stock_at: stockAt,
      type: type,
    );
  }
}
