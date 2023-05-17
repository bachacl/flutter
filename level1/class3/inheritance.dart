class Animal {
  String? name;

  void makeSound() {
    print('The animal makes a sound');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

void main() {
  Animal animal = Animal();
  animal.makeSound();

  Cat cat = Cat();
  cat.name = 'Whiskers';
  cat.makeSound();
}
