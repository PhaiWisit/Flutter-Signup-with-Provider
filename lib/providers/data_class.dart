import 'package:flutter/cupertino.dart';
import 'package:flutter_singup_provider/services/service_class.dart';
import 'package:flutter_singup_provider/models/signup_model.dart';
import 'package:http/http.dart' as http;

class DataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<void> postData(SignUpBody body) async {
    loading = true;
    notifyListeners();
    http.Response response = (await register(body))!;
    if (response.statusCode == 200) {
      isBack = true;
      print(response.body.toString());
    }
    loading = false;
    notifyListeners();
  }
}
