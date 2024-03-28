import '../dto/mask_dto.dart';
import '../model/stores.dart';

extension MaskDtoToStoreList on MaskDto {
  List<Store> toStoreList() {
    return stores
            // 데이터 불안정 한지 필터링
            ?.where((e) =>
                e.addr != null &&
                e.code != null &&
                e.createdAt != null &&
                e.name != null &&
                e.type != null)
            // Strore 객체 형 변환
            .map((e) => Store(
                  addr: e.addr!,
                  code: e.code!,
                  created_at: e.createdAt!,
                  name: e.name!,
                  type: e.type!,
                ))
            // nullable 타입을 변환하기 때문에 null 대체값을 설정
            .toList() ??
        // nullable 한 형태로 가져왔기 때문에 작성해야한다고함
        [];
  }
}
