import 'package:associa_med_app/bindings/comite_binding.dart';
import 'package:associa_med_app/contract/page.dart';
import 'package:associa_med_app/routes/app_route.dart';
import 'package:associa_med_app/views/views/comite_screen.dart';


class ComitePage extends Page {
  ComitePage() : super(AppRoute().comitePageRoute, ComiteBinding(), [], ComiteScreen());

}