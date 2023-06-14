abstract class Animal {
  String? name;

  void makeSound();
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

void main() {
  Cat cat = Cat();
  cat.name = 'Whiskers';
  cat.makeSound();
}
