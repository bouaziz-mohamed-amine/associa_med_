import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/contract/service.dart';
import 'package:associa_med_app/models/role.dart';
import 'package:associa_med_app/services/remote/api_url/role_api_url.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
//import 'api_url/api_url/position_api_url.dart';

class RoleService extends Service {
  final box = GetStorage();

  @override
  Future<Model> create(Model model) async {
    // String token = box.read("token");
    //
    // final headers = {'Authorization': 'Bearer $token'};

    Role role = model as Role;
    await post(RoleApiUrl().createRolesUrl(), role.toJson());
    return role;
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async {
    List<Role> Roles = [];
    // String token = box.read("token");
    // final headers = {'Authorization': 'Bearer $token'};
    var response = await get(RoleApiUrl().showRolesUrl());
    for (Map<String, dynamic> role in response.body["role"])
      Roles.add(Role.fromJson(role));
    print(Roles[0].toJson());
    return Roles;

    //throw UnimplementedError();
    return Roles;
  }

  @override
  Future<Role> findOne(String id) async {
    // String token = box.read("token");

    // final headers = {'Authorization': 'Bearer $token'};

    var response = await get(RoleApiUrl().showRoleUrl(id));
    print(response.body["role"]);
    return Role.fromJson(response.body["role"]);
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) async {
    // String token = box.read("token");

    // final headers = { 'Authorization': 'Bearer $token' };

    Response response =await delete(RoleApiUrl().deleteRolesUrl(id));
    print(response.hasError);
    return response.hasError;
    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model) async {
    // String token = box.read("token");
    //
    // final headers = { 'Authorization': 'Bearer $token' };
    Role role = model as Role;
    await post(RoleApiUrl().updateRolesUrl(role.id.toString()), role.toJson());
    print(role.toJson());
    return role;
    throw UnimplementedError();
  }
}