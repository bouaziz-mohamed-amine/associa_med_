import 'package:associa_med_app/bindings/login_binding.dart';
import 'package:associa_med_app/contract/page.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/views/login_screen.dart';


class LoginPage extends Page {
  LoginPage()
      : super( AppRoute().loginRoute, LoginBinding(), [],  LoginScreen());

}
