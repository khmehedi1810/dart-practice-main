void main(){
  // operators are same as other programming language

  int a = 10;
  int b = 3;
  var res = a ~/ b;

  String nam = "KH";
  var bol = nam is String;

  print(res); // 3
  print(bol); // true

  int? age; // value initialize kori nai tai ? sign use

  var checkNull = age ?? 10;

  print(checkNull);
}