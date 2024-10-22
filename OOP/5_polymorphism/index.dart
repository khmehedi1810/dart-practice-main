// There are two parts in polymorphism
// 1. method overriding, 2. method overloading
// *** dart is not suppoty method overloading

class Father{
  int age = 50;
  myAge(){
    print(age);
  }
}

class Son{
  int age = 20;

  @override
  myAge() {
    print(age);
  }
}

void main(){
  var son = new Son();
  son.myAge();
}