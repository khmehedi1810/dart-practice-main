import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'config.dart';

class Requests {
  static Future<Map<String, dynamic>> getAllData() async{
    try{
      var response = await http.get(Uri.parse("${Config.baseUrl}/api/posts"));
      return convert.jsonDecode(response.body);
    }catch(e){
      return {};
    }
    
  }

  static Future<Map<String, dynamic>> getSingleData(int id) async{
    try{
      var response = await http.get(Uri.parse("${Config.baseUrl}/api/posts/${id}"));
      return convert.jsonDecode(response.body);
    }catch(e){
      return {};
    }
    
  }

  static Future<Map<String, dynamic>> publishPost(Map<String, dynamic> data) async{
    try{
      var response = await http.post(
        Uri.parse("${Config.baseUrl}/api/posts"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: convert.jsonEncode(data)
      );

      return convert.jsonDecode(response.body);
    }catch(e){
      return {};
    }
  }

  static Future<Map<String, dynamic>> deletePost(int id) async{
    try{
      var response = await http.delete(Uri.parse("${Config.baseUrl}/api/posts/${id}"));
      return convert.jsonDecode(response.body);
    }catch(e){
      return {};
    }
  }
}