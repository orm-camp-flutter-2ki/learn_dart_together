class Time {
  String clientIp;
  String dateTime;
  int dayOfYear;
  int dayOfWeek;

  Time(this.clientIp, this.dateTime, this.dayOfWeek, this.dayOfYear);

  Map<String, dynamic> toJson() => {
        'client_ip': clientIp,
        'datetime': dateTime,
        'day_of_week': dayOfWeek,
        'day_of_year': dayOfYear
      };

  Time.fromJson(Map<String, dynamic> json)
      : clientIp = json['client_ip'],
        dateTime = json['datetime'],
        dayOfWeek = json['day_of_week'],
        dayOfYear = json['day_of_year'];

  Time copyWith(
      String? clientIp, String? dateTime, int? dayOfYear, int? dayOfWeek) {
    return Time(clientIp ?? this.clientIp, dateTime ?? this.dateTime,
        dayOfWeek ?? this.dayOfWeek, dayOfYear ?? this.dayOfWeek);
  }

  @override
  String toString() {
    return 'Time{clientIp: $clientIp, dateTime: $dateTime, dayOfYear: $dayOfYear, dayOfWeek: $dayOfWeek}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Time &&
          runtimeType == other.runtimeType &&
          clientIp == other.clientIp &&
          dateTime == other.dateTime &&
          dayOfYear == other.dayOfYear &&
          dayOfWeek == other.dayOfWeek;

  @override
  int get hashCode =>
      clientIp.hashCode ^
      dateTime.hashCode ^
      dayOfYear.hashCode ^
      dayOfWeek.hashCode;
}
