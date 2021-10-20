import 'package:associa_med_app/contract/Service.dart';
import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/models/actionned.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';

import 'api_url/action_api_url.dart';

class ActionService extends Service{
  final box = GetStorage();

  @override
  Future<Model> create(Model model) async {
    // TODO: implement create
    // String token = box.read("token");
    Actionned action = model as Actionned;
    // final headers = {'Authorization': 'Bearer $token'};
    Response response = await post(ActionApiUrl().actionCreateUrl(), action.toJson());
    print(response.statusCode);
    print(response.body);
    return action;
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async {
    List<Actionned> actions = [];
    // String token = box.read("token");
    //
    // final headers = {'Authorization': 'Bearer $token'};
    Response response = await get(ActionApiUrl().ActionsUrl);
    print(response.statusCode);
    for(Map<String,dynamic> action in response.body['actions']) {
      actions.add(Actionned.fromJson(action));
     }
     print(response.body['actions']);
     return actions;


    // TODO: implement find
    //throw UnimplementedError();
  }

  @override
  Future<Model> findOne(String id) async {
    Response response = await get(ActionApiUrl().actionGetUrl(id));
    print(response.statusCode);
    print(response.body);
    return (Actionned.fromJson(response.body["action"]));
  }

  @override
  Future<bool> remove(String id) async {
    var response = await delete(ActionApiUrl().actionDeleteUrl(id));
    print(response.statusCode);
    print(response.body);
    return(true);
  }

  @override
  Future<Model> update(Model model) async {
    Actionned action = model as Actionned;
    var response = await put(ActionApiUrl().actionUpdateUrl(action.id.toString()),action.toJson());
    print(response.statusCode);
    print(response.body);
    return(action);

  }

}
