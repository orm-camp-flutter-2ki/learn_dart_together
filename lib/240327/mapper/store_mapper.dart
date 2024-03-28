import 'package:learn_dart_together/240327/dto/store_dto.dart';

import '../model/stores.dart';

extension StoreDtotoStore on StoreDto {
  //
  //익스텐션 확장함수를 활용해서.
  Stores toStore() {
    //Store의 인스컨스를 만들어서 반환한다. StoreDto의 메서드를 만드는거고 이 메서드로 Stores메서드를 반환함
    //넘인데 더블로 하고싶을때 DTO 사용
    return Stores(
      //S
      addr: addr ?? 'unknown',
      code: code ?? 'unknown',
      created_at: createdAt ?? 'unknown',
      lat: lat?.toDouble() ?? 1.0,
      //null이 아닐 경우에 todouble 그리고 널일수도 있으니까 기본값을 준다.
      lng: lng?.toDouble() ?? 1.0,
      name: name ?? 'unknown',
      remain_stat: remainStat ?? 'unknown',
      stock_at: stockAt ?? 'unknown',
      type: type ?? 'unknown',
    );
  }
}
