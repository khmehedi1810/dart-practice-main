void main() {
  int a = 10;
  double b = 10.4;
  String c = 'Mehedi';
  bool d = true;

  List<String> edu = ['s', 'c', 'u', 's'];
  // can use duplicate val

  Map<String, dynamic> myMap = {
    'name': "KH Mehedi",
    'age': 26,
    'age': 30
  };
  // cann't use duplicate val
  // multiple key use korle, latest ta dekhabe

  Set mySet = {'s', 'c', 'u', 's'};
  // cann't use duplicate val 
  // use korle akta dekhabe

  String nam = 'mehedi';

  print(a);
  print(b);
  print(c);
  print(d);
  print(edu);
  print(myMap);
  print(mySet);

  print(nam.codeUnits); 
  // print the char code

  Runes inp = Runes('\u{1f49d}');
  print(String.fromCharCodes(inp));
  // print the symbol

  // if we do not want to specity data type then we can use var
  var cusMap = {
    'nam' : "KH Mehedi",
    'age': 20
  };

  print(cusMap['age']);

  num cusNum = 10; // can put: 14.4 decimal 
  // can put both int and decimal

  var xx = 10; //it assume x is int
  // xx = '10'; not possible cause x is int

  // to solve it we can use dynamic
  dynamic numX = 10;
  numX = "20"; // its possoble

  print(numX.runtimeType);
  // check variable type

}