/// name : "Romaguera-Crona"
/// catchPhrase : "Multi-layered client-server neural-net"
/// bs : "harness real-time e-markets"

class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  Company.fromJson(dynamic json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }
  String? name;
  String? catchPhrase;
  String? bs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['catchPhrase'] = catchPhrase;
    map['bs'] = bs;
    return map;
  }
}
