import 'package:associa_med_app/services/remote/api_url/main_api_url.dart';

class PositionApiUrl extends MainApiUrl{
  String showPositionsUrl() => mainUrl + "position";
  String createPositionsUrl() => mainUrl +"position";

  String updatePositionsUrl(String id) => mainUrl + "position/" + id;
  String deletePositionsUrl(String id) => mainUrl + "position/" + id;
  String showPositionUrl(String id) => mainUrl + "position/" + id;
}