import 'package:associa_med_app/controllers/user_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }

}