import 'package:associa_med_app/contract/service.dart';
import 'package:get/get.dart';

abstract class Controller extends GetxController{
  Service _service;

  Controller(this._service);
}