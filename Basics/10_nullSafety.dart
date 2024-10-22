void main(){
  // mull safety (?, !, late)

  // jodi kono variable initially null thake
  String? name; // ? na dile error dito
  // print(name);

  // if we want to print length of name. it gives error
  if(name != null){
    print(name.length); // works fine
  }
  // or
  var len = name?.length ?? 0;
  // to solve it we can use ?
  // print(len);

  // convertToString(name!);
  // ! means value ta null hote parbe na, and it gives a error cause name is null
  // convertToString('33'); // no error

  late String age; // value pore assign hobe
  age = '20';
  // print(age);

  // null able instance 
  Account? account;
  print(account?.name?.length ?? 0);
}

convertToString(val){
  print(int.parse(val));
}

class Account{
  String? name;
}