import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/exception/exception.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:associa_med_app/services/remote/api_url/auth_api_url.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthService extends GetConnect {
  final box = GetStorage();

  Future<User> register(User user) async {
    Response response = await post(AuthApiUrl().registerUrl(), user.toJson());

    switch (response.statusCode) {
      case 200:
      case 201:
        box.write("token", response.body["token"]);
        box.write("current_user", response.body["user"]);

        var user = User.fromJson(response.body["user"]);

        return user;
      default:
        throw RegisterFailed(response.statusText.toString());
    }

    print(user.email);
    print(user.toJson());
    box.write("token", response.body["token"]);
    box.write("current_user", user.toJson());
    return User.fromJson(response.body["user"]);
  }

  Future<User> login(String email, String password) async {
    Response response = await post(
        AuthApiUrl().loginUrl(), {"email": email, "password": password});
    switch (response.statusCode) {
      case 200:
      case 201:
        box.write("token", response.body["token"]);
        box.write("current_user", response.body["user"]);

        var user = User.fromJson(response.body["user"]);

        return user;
      default:
        throw LoginFailed();
    }
  }

  Future<void> logout() async {
    String token = box.read("token");

    final headers = {'Authorization': 'Bearer $token'};
    Response response =
        await post(AuthApiUrl().logoutUrl(), null, headers: headers);
    switch (response.statusCode) {
      case 200:
      case 201:
        box.remove("token");

        var user = User.fromJson(response.body["user"]);
        break;
      default:
        throw LogoutFailed(response.statusText.toString()) ;
    }
  }
}
