import 'package:associa_med_app/controllers/auth_controller.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }

}