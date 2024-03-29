import 'package:learn_dart_together/24_03_29/dto/production_country_dto.dart';
import 'package:learn_dart_together/24_03_29/model/production_country.dart';

extension ProductionCountryDtoToProductionCountry on ProductionCountryDto {
  ProductionCountry toProductionCountry() {
    return ProductionCountry(
      iso31661: iso31661 ?? 'unknown',
      name: name ?? 'unknown',
    );
  }
}