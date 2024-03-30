import 'package:json_annotation/json_annotation.dart';

part 'dates.g.dart';

@JsonSerializable(explicitToJson: true)
class Dates {
  final String maximum;
  final String minimum;

  const Dates({
    required this.maximum,
    required this.minimum,
  });

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);

  Map<String, dynamic> toJson() => _$DatesToJson(this);
}
