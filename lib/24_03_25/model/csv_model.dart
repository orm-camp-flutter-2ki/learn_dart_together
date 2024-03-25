class CSVModel {
  final String name;
  final String exchange;

  CSVModel({
    required this.name,
    required this.exchange,
  });

  @override
  String toString() {
    return 'name: $name, exchange: $exchange';
  }

  @override
  bool operator ==(Object other) {
    return super == other;
  }

  @override
  int get hashCode => super.hashCode;

  CSVModel copyWith({String? name, String? exchange}) {
    return CSVModel(
      name: name ?? this.name,
      exchange: exchange ?? this.exchange,
    );
  }

  static List<CSVModel> fromCSV(String csvString) {
    final List<String> lines = csvString.split('\n');
    final List<CSVModel> data = [];

    for (final line in lines) {
      final parts = line.split(',');
      if (parts.length >= 2) {
        final symbol = parts[1];
        final exchange = parts[2];
        data.add(CSVModel(name: symbol, exchange: exchange));
      }
    }

    return data;
  }

  String toCSV() {
    return '$name,$exchange';
  }
}
