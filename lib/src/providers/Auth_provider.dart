import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/http_exception.dart';

final String uri = 'http://alsaha-app.com';
class Autth with ChangeNotifier{
  String Token;
  String email;
  String password;
  String status;
   Future <void>loginData(String email , String password) async{
    String myUrl = "http://alsaha-app.com/api/v1/login";
    final response = await  http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {
          "email": "$email",
          "password" : "$password"
        } ) ;
    print(json.decode(response.body));
    }
  Future<String> _login(String encodedLoginData) async {
    final String url = '$uri/api/v1/login';
    print(json.decode(encodedLoginData).toString());

    try {
      final response = await http.post(url,
          body: json.decode(encodedLoginData),
         );
      final responseData = json.decode(response.body);
      if (response.statusCode != 200) {
        throw HttpException(responseData['message'], response.statusCode);
      }
      notifyListeners();

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('userData', response.body);
      return response.body;
    } catch (exp) {
      throw exp;
    }
  }

  }

