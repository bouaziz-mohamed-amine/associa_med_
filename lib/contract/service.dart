import 'package:associa_med_app/contract/model.dart';
import 'package:get/get.dart';

abstract class Service extends GetConnect{


  Future<List<Model>> find() ;

  Future<Model> findOne(String id) ;

  Future<Model> create(Map<String,dynamic> data) ;

  Future<Model> update(Model model) ;

  Future<bool> remove(String id) ;

}