import 'package:associa_med_app/controllers/auth_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(),fenix: true);
  }

}