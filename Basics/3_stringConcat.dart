void main(){
  String a = "KH ";
  String b = "Mehedi ";
  String c = "Hasan";

  String nam = 'Kh ' 'Mehedi ' 'Hasan';

  // 1st
  print(a+b+c);

  // 2nd 
  print("$a$b$c");

  // 3rd
  print(nam);

  List<String> namErParts = ['KH', 'Mehedi', 'Hasan'];
  print(namErParts.join(' '));
  // akta kore space diye print korbe

  print('The result is: ${2*2}');

  // multiline string
  String multi = '''
  This is KH Mehedi Hasan,
  age is 25
  ''';
  print(multi);
}