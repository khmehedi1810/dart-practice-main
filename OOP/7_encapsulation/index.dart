// settter, getter method
// dart support only public and private 
// to make variable private use _ in dart
class MyProperty{
  int? _age; // cannot acces outside this class. but same file hole outside thekeu access korte parbo
  set setAge(int a){
    _age = a;
  }

  get getAge{
    return _age;
  }
  // get method er parameter thake na
}

void main(){
  var me = new MyProperty();

  // set and get 
  me.setAge = 25;
  print(me.getAge);
}