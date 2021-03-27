import 'package:covid19/controllers/home_controller.dart';
import 'package:covid19/pages/home_page.dart';
import 'package:covid19/repositories/covidapi_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i)=> CovidApiRepository()),
    Bind.singleton((i)=> HomeController())
  ];

 

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/home", child:(_,__)=> HomePage())
  ]; 

}