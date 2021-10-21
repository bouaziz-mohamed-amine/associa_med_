import 'dart:io';

import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/contract/service.dart';
import 'package:associa_med_app/models/candidacy.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';

//import 'api_url/api_url/candidacy_api_url.dart';
import 'api_url/candidacy_api_url.dart';

class CandidacyService extends Service {
  final box = GetStorage();

  @override
  Future<Model> create(Model model) async {
    String token = box.read("token");

    final headers = {'Authorization': 'Bearer $token'};

    Candidacy candidacy = model as Candidacy;
    await post(CandidacyApiUrl().createCandidaciesUrl(), candidacy.toJson(),
        headers: headers);
    return candidacy;
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async {
    List<Candidacy> candidacys = [];
    String token = box.read("token");
    final headers = {'Authorization': 'Bearer $token'};
    var response =
    await get(CandidacyApiUrl().showCandidaciesUrl(), headers: headers );
    for (Map<String, dynamic> candidacy in response.body["candidacys"])
      candidacys.add(Candidacy.fromJson(candidacy));
    print(candidacys[1].userId);
    return candidacys;

    //throw UnimplementedError();
    return candidacys;
  }

  @override
  Future<Candidacy> findOne(String id) async {
    String token = box.read("token");

    final headers = {'Authorization': 'Bearer $token'};
    var response = await get(CandidacyApiUrl().showCandidacyUrl(id), headers: headers);
    print(CandidacyApiUrl().showCandidacyUrl(id));
    print(response.body["candidacy"]);
    print("hello");
    return Candidacy.fromJson(response.body["candidacy"]);
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) async {
    String token = box.read("token");

    final headers = { 'Authorization': 'Bearer $token' };

    Response response =await delete(CandidacyApiUrl().deleteCandidaciesUrl(id), headers: headers);
    print(response.hasError);
    return response.hasError;
    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model) async {
    String token = box.read("token");
    print("*****************************");
    print("token");
    print("*****************************");

    final headers = { 'Authorization': 'Bearer $token' };
    Candidacy candidacy = model as Candidacy;
    await put(CandidacyApiUrl().updateCandidaciesUrl(candidacy.id.toString()), candidacy.toJson(), headers: headers);
    print(candidacy.toJson());
    return candidacy;
    throw UnimplementedError();
  }
}
