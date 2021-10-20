import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthMiddleware implements GetMiddleware{
  @override
  int? priority;

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    // TODO: implement onBindingsStart
    throw UnimplementedError();
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    // TODO: implement onPageBuildStart
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
    // TODO: implement redirect
    throw UnimplementedError();
  }

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
    // TODO: implement redirectDelegate
    throw UnimplementedError();
  }

}

