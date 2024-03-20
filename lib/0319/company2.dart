class Employee {
  String name;
  String age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };

  Employee.fromJason(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];
}

class Department {
  String teamName;
  Employee leader;

  Department(this.teamName, this.leader);

  Department.fromJason(Map<String, dynamic> json)
      : teamName = json['teamName'],
        leader = Employee.fromJason(json['leader']);

  Map<String, dynamic> toJson() => {
        'teamName': teamName,
        'leader': leader,
      };

  @override
  String toString() {
    return '[$teamName] ${leader.name} (${leader.age})';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Department &&
          leader == other.leader &&
          teamName == other.teamName;

  @override
  int get hashCode => leader.hashCode ^ teamName.hashCode;

  Department copyWith({Employee? leader, String? teamName}) {
    return Department(teamName ?? this.teamName, leader ?? this.leader);
  }
}
