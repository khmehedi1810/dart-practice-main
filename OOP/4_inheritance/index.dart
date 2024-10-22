// multiple inheriet is not possible
// Single Inheritance: Dart supports single inheritance, so a class can only extend one parent class.

class Father{
  String car = 'BMW';
  int age = 58;

  myhome(){
    print("I have home");
  }

  myAge(){
    print(age);
  }
}

class Son extends Father{
  int age = 20;
  myCar(){
    print(car);
  }
  myAge(){
    print(age);
  }
}

void main(){
  var son = new Son();
  son.myCar();
  son.myAge();
}