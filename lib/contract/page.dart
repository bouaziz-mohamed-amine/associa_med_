import 'package:get/get.dart';

abstract class Page extends GetPage{
  String _name;
  Bindings _binding;
  List<GetMiddleware> _middlewares;
  GetView _view;

  Page(this._name, this._binding, this._middlewares, this._view):super(name: _name, binding: _binding, middlewares: _middlewares, page: () => _view);

  GetPage getPage(){

    return GetPage(name: _name, binding: _binding,middlewares: middlewares, page: () => _view );
  }
}