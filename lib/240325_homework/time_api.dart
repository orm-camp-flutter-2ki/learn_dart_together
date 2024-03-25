import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  TimeApi time = TimeApi();
  time.getTime('Seoul');
}

class TimeApi {
  Future<Time> getTime(city) async {
    final response = await http
        .get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/$city'));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      Time data = Time.fromJson(json);
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}

class Time {
  final String abbreviation;
  final String client_ip;
  final String datetime;
  final int day_of_week;
  final int day_of_year;
  final bool dst;
  final int? dst_from;
  final int dst_offset;
  final int? dst_until;
  final int raw_offset;
  final String timezone;
  final int unixtime;
  final String utc_datetime;
  final String utc_offset;
  final int week_number;

  Time(
      this.abbreviation,
      this.client_ip,
      this.datetime,
      this.day_of_week,
      this.day_of_year,
      this.dst,
      this.dst_from,
      this.dst_offset,
      this.dst_until,
      this.raw_offset,
      this.timezone,
      this.unixtime,
      this.utc_datetime,
      this.utc_offset,
      this.week_number);

  Time.fromJson(Map<String, dynamic> json)
      : abbreviation = json['abbreviation'],
        client_ip = json['client_ip'],
        datetime = json['datetime'],
        day_of_week = json['day_of_week'],
        day_of_year = json['day_of_year'],
        dst = json['dst'],
        dst_from = json['dst_from'] ?? 0,
        dst_offset = json['dst_offset'],
        dst_until = json['dst_until'] ?? 0,
        raw_offset = json['raw_offset'],
        timezone = json['timezone'],
        unixtime = json['unixtime'],
        utc_datetime = json['utc_datetime'],
        utc_offset = json['utc_offset'],
        week_number = json['week_number'];

  Map<String, dynamic> toJson() => {
        'abbreviation': abbreviation,
        'client_ip': client_ip,
        'datetime': datetime,
        'day_of_week': day_of_week,
        'day_of_year': day_of_year,
        'dst': dst,
        'dst_from': dst_from ?? 0,
        'dst_offset': dst_offset,
        'dst_until': dst_until ?? 0,
        'raw_offset': raw_offset,
        'timezone': timezone,
        'unixtime': unixtime,
        'utc_datetime': utc_datetime,
        'utc_offset': utc_offset,
        'week_number': week_number,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Time &&
          runtimeType == other.runtimeType &&
          abbreviation == other.abbreviation &&
          client_ip == other.client_ip &&
          datetime == other.datetime &&
          day_of_week == other.day_of_week &&
          day_of_year == other.day_of_year &&
          dst == other.dst &&
          dst_from == other.dst_from &&
          dst_offset == other.dst_offset &&
          dst_until == other.dst_until &&
          raw_offset == other.raw_offset &&
          timezone == other.timezone &&
          unixtime == other.unixtime &&
          utc_datetime == other.utc_datetime &&
          utc_offset == other.utc_offset &&
          week_number == other.week_number;

  @override
  int get hashCode =>
      abbreviation.hashCode ^
      client_ip.hashCode ^
      datetime.hashCode ^
      day_of_week.hashCode ^
      day_of_year.hashCode ^
      dst.hashCode ^
      dst_from.hashCode ^
      dst_offset.hashCode ^
      dst_until.hashCode ^
      raw_offset.hashCode ^
      timezone.hashCode ^
      unixtime.hashCode ^
      utc_datetime.hashCode ^
      utc_offset.hashCode ^
      week_number.hashCode;

  @override
  String toString() {
    return 'Time{abbreviation: $abbreviation, client_ip: $client_ip, datetime: $datetime, day_of_week: $day_of_week, day_of_year: $day_of_year, dst: $dst, dst_from: $dst_from, dst_offset: $dst_offset, dst_until: $dst_until, raw_offset: $raw_offset, timezone: $timezone, unixtime: $unixtime, utc_datetime: $utc_datetime, utc_offset: $utc_offset, week_number: $week_number}';
  }
}
