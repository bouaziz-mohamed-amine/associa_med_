import 'package:associa_med_app/services/remote/api/main_api.dart';

class UserExperienceApi extends MainApi{
  String showExperiencesUrl() => mainUrl + "experience/all" ;
  String createExperienceUrl() => mainUrl + "experience/create";
  String updateExperienceUrl(String id) => mainUrl + "update/" + id;
  String deleteExperienceUrl(String id) => mainUrl + "delete/" + id;
  String showExperienceUrl(String id) => mainUrl + "show/" + id;
}