import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_singup_provider/models/signup_model.dart';
import 'package:http/http.dart' as http;

Future<http.Response?> register(SignUpBody data) async {
  http.Response? response;
  try {
    response = await http.post(Uri.parse("http://192.168.1.107:5000/register"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
    print(response.statusCode.toString());
  } catch (e) {
    log(e.toString());
  }

  return response;
}
