import 'package:associa_med_app/services/remote/api_url/main_api_url.dart';

class RoleApiUrl extends MainApiUrl{
  String showRolesUrl() => mainUrl + "role/all";
  String createRolesUrl() => mainUrl +"role/create";

  String updateRolesUrl(String id) => mainUrl + "role/update/" + id;
  String deleteRolesUrl(String id) => mainUrl + "role/delete/" + id;
  String showRoleUrl(String id) => mainUrl + "role/show/" + id;
}