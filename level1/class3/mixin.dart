mixin Greeting {
  void sayHello() {
    print('Hello');
  }
}

class Person with Greeting {
  String? name;

  Person(this.name);

  void introduce() {
    print('My name is $name');
  }
}

void main() {
  Person person1 = Person('Alice');
  person1.sayHello();
  person1.introduce();
}
