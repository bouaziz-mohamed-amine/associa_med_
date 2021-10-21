import 'package:associa_med_app/services/remote/api_url/main_api_url.dart';

class CandidacyApiUrl extends MainApiUrl{
  String showCandidaciesUrl() => mainUrl + "candidacy";
  String createCandidaciesUrl() => mainUrl +"candidacy";

  String updateCandidaciesUrl(String id) => mainUrl + "candidacy/" + id;
  String deleteCandidaciesUrl(String id) => mainUrl + "candidacy/" + id;
  String showCandidacyUrl(String id) => mainUrl + "candidacy/" + id;
}