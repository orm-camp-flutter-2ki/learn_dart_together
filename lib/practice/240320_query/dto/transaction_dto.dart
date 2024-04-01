import 'package:learn_dart_together/practice/240320_query/dto/trader_dto.dart';

class TransactionDto {
  TraderDto? trader;
  int? year;
  int? value;

  TransactionDto({
    this.trader,
    this.year,
    this.value,
  });

  Map<String, dynamic> toJson() {
    return {
      'trader': trader,
      'year': year,
      'value': value,
    };
  }

  factory TransactionDto.fromJson(Map<String, dynamic> json) {
    return TransactionDto(
      trader: json['trader'] as TraderDto,
      year: json['year'] as int,
      value: json['value'] as int,
    );
  }
}