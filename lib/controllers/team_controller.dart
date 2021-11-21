import 'package:associa_med_app/contract/controller.dart';
import 'package:associa_med_app/models/actionned.dart';
import 'package:associa_med_app/models/team.dart';
import 'package:associa_med_app/services/remote/team_service.dart';
import 'package:get/get.dart';

class TeamController extends Controller{
 var  data="amine".obs;
 var team= Team().obs ;
 var actions= [].obs ;
 var count=0.obs;
 change()=>data.value="bo3";
 @override
  void onInit() async {
    // TODO: implement onInit
   await fetchData();
    super.onInit();
  }

 Future<void> fetchData() async {
    var data= await TeamService().findOne("1") as Team;
    team.value=data;
    count.value=data.actions!.length+1 ;
    var reversedList = new List.from(data.actions!.reversed);
    actions.value=reversedList;

  }
}