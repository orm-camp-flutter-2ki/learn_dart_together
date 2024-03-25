class RealtimeStationArrival {
  String realtimeStationArrival;

  RealtimeStationArrival(this.realtimeStationArrival);

  RealtimeStationArrival.fromJson(Map<String, dynamic> json)
      : realtimeStationArrival = json['realtimeStationArrival'];
}