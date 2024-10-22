// in this example we will learn about api,
// Future data type

import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{
  var data = await getApiResult();
  // print(data);
  // print(data.runtimeType);

  int flag = 1;
  for (var val in data) {
    print('$flag. ${val['title']}');  // String interpolation with a separator
    flag++;
  }
}

Future<List<dynamic>> getApiResult() async{
  try{
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    return jsonDecode(response.body);
  }catch(e){
    print(e);
    return ['You have a error'];
  }
}
