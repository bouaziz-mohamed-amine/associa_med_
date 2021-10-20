
import 'package:associa_med_app/contract/model.dart';
import 'package:associa_med_app/contract/service.dart';
import 'package:associa_med_app/models/Phone.dart';
import 'package:associa_med_app/services/remote/api_url/phone_api_url.dart';
import 'package:get/get_connect/http/src/response/response.dart';
class PhoneService extends Service {
  @override
  Future<Model> create(Model model) async {
    // TODO: implement create
    // String token = box.read("token");
    Phone phone = model as Phone;
    // final headers = {'Authorization': 'Bearer $token'};
    Response response = await post(PhoneApiUrl().phoneCreateUrl(), phone.toJson());
    print(response.statusCode);
    print(response.body);
    return phone;
    throw UnimplementedError();
  }

  @override
  Future<List<Model>> find() async {
    List<Phone> phones = [];
    // // String token = box.read("token");
    // //
    // // final headers = {'Authorization': 'Bearer $token'};
    var response = await get(PhoneApiUrl().PhonesUrl);
    print(response.statusCode);
    for(Map<String,dynamic> phone in response.body['phones']) {
      phones.add(Phone.fromJson(phone));
     }
    print(response.body['phones']);
    print(response.body);
     return phones;
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<Model> findOne(String id) async {
     Response response = await get(PhoneApiUrl().phoneGetUrl(id));
     print(response.statusCode);
     print(response.body);
     return (Phone.fromJson(response.body["phone"]));
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String id) async {
     var response = await delete(PhoneApiUrl().phoneDeleteUrl(id));
     print(response.statusCode);
     print(response.body);
     return(true);
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<Model> update(Model model) async {
     Phone phone = model as Phone;
     var response = await put(PhoneApiUrl().phoneUpdateUrl(phone.id.toString()),phone.toJson());
     print(response.statusCode);
     print(response.body);
     return(phone);
    // TODO: implement update
    throw UnimplementedError();
  }
}