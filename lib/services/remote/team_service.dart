import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/contract/service.dart';
import 'package:associa_med_app/models/team.dart';
import 'package:associa_med_app/models/team.dart';
import 'package:associa_med_app/services/remote/api_url/team_api_url.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'api_url/api_url/position_api_url.dart';
// import 'api_url/api_url/team_api_url.dart';

class TeamService extends Service {
  final box = GetStorage();

  @override
  Future<Model> create(Model model) async {
    // String token = box.read("token");
    //
    // final headers = {'Authorization': 'Bearer $token'};

    Team team = model as Team;
    await post(TeamApiUrl().createTeamsUrl(), team.toJson());
    return team;
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async {
    List<Team> Teams = [];
    // String token = box.read("token");
    // final headers = {'Authorization': 'Bearer $token'};
    var response = await get(TeamApiUrl().showTeamsUrl());
    for (Map<String, dynamic> team in response.body["teams"])
      Teams.add(Team.fromJson(team));
    print(Teams[1].toJson());
    return Teams;

    //throw UnimplementedError();
    return Teams;
  }

  @override
  Future<Model> findOne(String id) async {
    // String token = box.read("token");

    // final headers = {'Authorization': 'Bearer $token'};

    var response = await get(TeamApiUrl().showTeamUrl(id));
    print(response.body["team"]);
    return Team.fromJson(response.body["team"]);
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) async {
    // String token = box.read("token");

    // final headers = { 'Authorization': 'Bearer $token' };
    Response response =await delete(TeamApiUrl().deleteTeamsUrl(id));
    print(response.hasError);
    return response.hasError;
    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model) async {
    // String token = box.read("token");
    //
    // final headers = { 'Authorization': 'Bearer $token' };
    Team team = model as Team;
    await post(TeamApiUrl().updateTeamsUrl(team.id.toString()), team.toJson());
    print(team.toJson());
    return team;
    throw UnimplementedError();
  }
}