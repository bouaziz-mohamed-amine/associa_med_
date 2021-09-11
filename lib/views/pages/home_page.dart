import 'package:associa_med_app/contract/page.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomePage extends Page{
  HomePage() : super(AppRoute().homePageRoute, binding, middlewares, view);

}