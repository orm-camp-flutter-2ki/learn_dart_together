import 'package:learn_dart_together/24_03_29/dto/production_company_dto.dart';
import 'package:learn_dart_together/24_03_29/model/production_company.dart';

extension ProductionCompanyDtoToProductionCompany on ProductionCompanyDto {
  ProductionCompany toProductionCompany() {
    return ProductionCompany(
      id: id ?? 0,
      logoPath: logoPath ?? 'unknown',
      name: name ?? 'unknown',
      originCountry: originCountry ?? 'unknown',
    );
  }
}