import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(){
  getData();
}

getData(){
  var res = http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  res.then((val){
    print(val.body);
  }).onError((e, s){
    print(e);
    print(s);
  });
}