import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/contract/service.dart';
import 'package:associa_med_app/models/experience.dart';
import 'package:associa_med_app/services/remote/api/user_experience_api.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';

class ExperienceService extends Service{
  final box = GetStorage();


  @override
  Future<Model> create(Model model) async{
    String token = box.read("token");

    final headers = {'Authorization': 'Bearer $token'};

    Experience experience = model as Experience;
    await post(UserExperienceApi().createExperienceUrl(), experience.toJson(),headers: headers);
    return experience;

    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async{
    List<Experience> experiences = [];
    String token = box.read("token");

    final headers = {'Authorization': 'Bearer $token'};

     Response response = await get(UserExperienceApi().showExperiencesUrl(), headers: headers);
     for (Map<String,dynamic> experience in response.body)
        experiences.add(Experience.fromJson(experience));
     return experiences;
    throw UnimplementedError();
  }

  @override
  Future<Model> findOne(String id) async{
    String token = box.read("token");

    final headers = {'Authorization': 'Bearer $token'};

    Response response = await get(UserExperienceApi().showExperienceUrl(id), headers: headers);
    
    return Experience.fromJson(response.body["experience"]);


    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) async{
    String token = box.read("token");

    final headers = { 'Authorization': 'Bearer $token' };

    Response response =await post(UserExperienceApi().deleteExperienceUrl(id), {"id": id}, headers: headers);
    return response.hasError;

    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model) async{
    String token = box.read("token");

    final headers = { 'Authorization': 'Bearer $token' };
    Experience experience = model as Experience;
    Response response = await post(UserExperienceApi().updateExperienceUrl(experience.id.toString()), experience.toJson(), headers: headers);
    return experience;
    throw UnimplementedError();
  }

}