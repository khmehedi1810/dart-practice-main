// there is no interface keyword in dart. 
// normal class ke interface hishabe consider kore then use korte pari
// kono class ke implement korle sei class er method gula override korte hobe
// multiple implements possible

class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog implements Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

void main() {
  Dog dog = Dog();
  dog.sound();  // Output: Dog barks
}
