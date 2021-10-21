import 'package:associa_med_app/services/remote/api_url/main_api_url.dart';

class TeamApiUrl extends MainApiUrl{
  String showTeamsUrl() => mainUrl + "team/all";
  String createTeamsUrl() => mainUrl +"team/create";

  String updateTeamsUrl(String id) => mainUrl + "team/update/" + id;
  String deleteTeamsUrl(String id) => mainUrl + "team/delete/" + id;
  String showTeamUrl(String id) => mainUrl + "team/show/" + id;
}