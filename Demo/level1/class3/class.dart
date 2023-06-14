class Person {
  String? name;
  int? age;

  void sayHello() {
    print('Hello, my name is $name and I am $age years old');
  }
}

void main() {
  Person person1 = Person();
  person1.name = 'Alice';
  person1.age = 30;
  person1.sayHello();
}
