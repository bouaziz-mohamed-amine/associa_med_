
import 'main_api_url.dart';

class UserExperienceApiUrl extends MainApiUrl{
  String showExperiencesUrl() => mainUrl + "experience/all" ;
  String createExperienceUrl() => mainUrl + "experience/create";
  String updateExperienceUrl(String id) => mainUrl + "update/" + id;
  String deleteExperienceUrl(String id) => mainUrl + "delete/" + id;
  String showExperienceUrl(String id) => mainUrl + "show/" + id;
}