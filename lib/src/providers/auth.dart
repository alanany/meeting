import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:meeting/src/models/http_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';
var status;
class Au with ChangeNotifier {
  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }
  String token;
  String userId;
  bool get isAuth {
    return token != null;
  }

  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;
    print('read : $value');
  }

  Future<void> _authenticate(
      String email, String password) async {
    String myUrl = "http://alsaha-app.com/api/v1/login";
    final response = await  http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {
          "email": "$email",
          "password" : "$password"
        } ) ;
    status = response.body.contains('message');

      var data = json.decode(response.body);
      if(status){
        print('data : ${data["message"]}');
           print(data);

      }else{
        print('data : ${data["token"]}');
        userId='${data["id"]}';

        print("hereeeeeeeeeeeee"+userId);

       // _save(data["token"]);
      }
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password);
  }

}
