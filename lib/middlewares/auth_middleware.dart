import 'package:associa_med_app/controllers/auth_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthMiddleware implements GetMiddleware{

  final authController = Get.find<AuthController>();


  @override
  int? priority;

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    // TODO: implement onBindingsStart
    throw UnimplementedError();
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    throw UnimplementedError();
  }

  @override
  Widget onPageBuilt(Widget page) {
    // TODO: implement onPageBuilt
    throw UnimplementedError();
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    // TODO: implement onPageCalled
    throw UnimplementedError();
  }

  @override
  void onPageDispose() {
    // TODO: implement onPageDispose
  }

  @override
  RouteSettings? redirect(String? route) {
    // ignore: deprecated_member_use
    return ! authController.emailController.isNull || route == '/login'
        ? null
        : RouteSettings(name: '/login');
    throw UnimplementedError();
  }

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
    // TODO: implement redirectDelegate
    throw UnimplementedError();
  }

}

