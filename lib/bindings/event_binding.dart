import 'package:associa_med_app/contract/controller.dart';
import 'package:associa_med_app/controllers/action_controller.dart';
import 'package:get/get.dart';

class  EventBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ActionController());
  }

}