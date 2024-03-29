import 'package:json_annotation/json_annotation.dart';

part 'dates.g.dart';

@JsonSerializable(explicitToJson: true)
class Dates {
  final DateTime maximum;
  final DateTime minimum;

  const Dates({
    required this.maximum,
    required this.minimum,
  });

  Dates copyWith({
    DateTime? maximum,
    DateTime? minimum,
  }) {
    return Dates(
      maximum: maximum ?? this.maximum,
      minimum: minimum ?? this.minimum,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dates &&
          runtimeType == other.runtimeType &&
          maximum == other.maximum &&
          minimum == other.minimum;

  @override
  int get hashCode => maximum.hashCode ^ minimum.hashCode;

  @override
  String toString() {
    return 'Dates{maximum: $maximum, minimum: $minimum}';
  }

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);

  Map<String, dynamic> toJson() => _$DatesToJson(this);
}
