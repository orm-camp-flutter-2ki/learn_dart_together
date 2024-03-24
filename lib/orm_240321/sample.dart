import 'dart:io';

class People {
  int number;
  String name;
  int age;

  People(this.number, this.name, this.age);

  People copyWith({
    int? number,
    String? name,
    int? age,
  }) {
    return People(
      number ?? number!,
      name ?? name!,
      age ?? age!,
    );
  }

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'age': age,
      };

  People.formJson(Map<String, dynamic> json)
      : number = json['number'],
        name = json['name'],
        age = json['age'];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is People &&
          runtimeType == other.runtimeType &&
          number == other.number &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => number.hashCode ^ name.hashCode ^ age.hashCode;

  @override
  String toString() {
    return 'People{ $number, $name, $age }';
  }
}

final sample1 = ('''1, 홍길동, 30, \n2, 한석봉, 20''');

// final sample1 = [
//     People(1,'홍길동',30),
//     People(2,'한석봉',20),
// ];

Future<void> main() async {
  final File csvFile = File('csv_file.csv');
  csvFile.writeAsString(sample1.toString());
  await copy('csv_file.csv', 'copy_file.csv');
}

Future<void> copy(String sourece, String target) async {
  try {
    final csvFile = File(sourece);

    final copyFile = File(target);

    final text = await csvFile.readAsString();

    final edit = text.replaceAll('한석봉', '김석봉');

    await copyFile.writeAsString(edit);
  } catch (e) {
    print('파일 에러');
  }

  // await copy.writeAsString(text);
}
