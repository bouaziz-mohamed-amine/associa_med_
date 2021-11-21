import 'package:associa_med_app/controllers/team_controller.dart';
import 'package:get/get.dart';

class ComiteBinding extends Bindings {

  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TeamController());
  }
}