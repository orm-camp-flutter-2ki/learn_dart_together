import '../store_dto.dart';

extension Validator on StoreDto {
  bool validate() {
    return addr != null &&
        code != null &&
        createdAt != null &&
        lat != null &&
        lng != null &&
        name != null &&
        remainStat != null &&
        stockAt != null &&
        type != null;
  }
}