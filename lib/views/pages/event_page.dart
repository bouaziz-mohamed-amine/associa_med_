import 'package:associa_med_app/bindings/event_binding.dart';
import 'package:associa_med_app/contract/page.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/views/event_screen.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class EventPage  extends Page {
  final String title;
  final String url;
  final String desc ;
  EventPage( this.title, this.url,this.desc) : super(AppRoute().eventPageRoute, EventBinding(), [], EventScreen(title, url,desc));

}