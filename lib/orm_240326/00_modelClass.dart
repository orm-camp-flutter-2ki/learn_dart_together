// 일반 클래스
// class User {
//   final String name;
//   final int age;
//
//   User(this.name, this.age);
//
//   @override
//   String toString() {
//     return 'User{name: $name, age: $age}';
//   }
// }

// 불변 객체
// class User {
//   final String name;
//   final int age;
//
//   const User(this.name, this.age);
//
//   @override
//   String toString() => 'User{name: $name, age: $age}';
//
// }

//immutable 어노테이션
// @immutable
// class User {
//   final String name;
//   final int age;
//
//   const User(this.name, this.age);
//
//   @override
//   String toString() => 'User{name: $name, age: $age}';
// }

//factory 생성자
// class User {
//   final String name;
//   final int age;
//
//   User(this.name, this.age);
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(json['name'], json['age']);
//   }
//
//   @override
//   String toString() =>  'User{name: $name, age: $age}';
// }
