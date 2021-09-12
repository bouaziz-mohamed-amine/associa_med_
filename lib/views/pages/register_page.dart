import 'package:associa_med_app/bindings/register_binding.dart';
import 'package:associa_med_app/contract/page.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/views/register_screen.dart';
import 'package:get/get.dart';


class RegisterPage extends Page{
  RegisterPage() : super(AppRoute().registerRoute, RegisterBinding(), [], RegisterScreen());
}