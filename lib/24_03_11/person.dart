class Person {
  final String name;
  final int birthYear;

  Person({required this.name, required this.birthYear});



 int get age{
   return DateTime.now().year - birthYear;

 }
 }

void main() {
  Person person1 = Person(name: 'seung', birthYear: 1995);
  print(person1.age);


}
