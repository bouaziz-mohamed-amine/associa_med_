import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/contract/service.dart';
import 'package:associa_med_app/models/position.dart';
import 'package:associa_med_app/models/user.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';

import 'api_url/position_api_url.dart';

class PositionService extends Service {
  final box = GetStorage();

  @override
  Future<Model> create(Model model) async {
    String token = box.read("token");

    final headers = {'Authorization': 'Bearer $token'};

    Position position = model as Position;
    await post(PositionApiUrl().createPositionsUrl(), position.toJson(),
        headers: headers);
    return position;
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async {
    List<Position> positions = [];
    // String token = box.read("token");
    // final headers = {'Authorization': 'Bearer $token'};
    var response =
        await get(PositionApiUrl().showPositionsUrl(), );
    for (Map<String, dynamic> position in response.body["positions"])
      positions.add(Position.fromJson(position));
    print(positions[1].name);
    return positions;

    //throw UnimplementedError();
    return positions;
  }

  @override
  Future<Position> findOne(String id) async {
    // String token = box.read("token");

    // final headers = {'Authorization': 'Bearer $token'};

    var response = await get(PositionApiUrl().showPositionUrl(id));
    print(response.body["position"]);
    return Position.fromJson(response.body["position"]);
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) async {
    // String token = box.read("token");

    // final headers = { 'Authorization': 'Bearer $token' };

    Response response =await delete(PositionApiUrl().deletePositionsUrl(id));
    print(response.hasError);
    return response.hasError;
    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model) async {
    // String token = box.read("token");
    //
    // final headers = { 'Authorization': 'Bearer $token' };
    Position position = model as Position;
    await put(PositionApiUrl().updatePositionsUrl(position.id.toString()), position.toJson());
    print(position.toJson());
    return position;
    throw UnimplementedError();
  }
}
