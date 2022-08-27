import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class UserAuthProvider with ChangeNotifier {
  bool isLoading = false;

  setLoading(bool loading) {
    isLoading = loading;
    notifyListeners();
  }

  void loginUser(String email, String password) async {
    setLoading(true);
    Response res = await post(Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password});

    if (res.statusCode == 200) {
        setLoading(false);
      print('Sucessfully login');
    } else {
       setLoading(false);

      print('Login Failed');
    }
  }
}
