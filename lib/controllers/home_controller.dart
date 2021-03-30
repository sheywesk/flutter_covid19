import 'package:covid19/models/country_model.dart';
import 'package:covid19/models/world_model.dart';
import 'package:covid19/repositories/covidapi_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final api = Modular.get<CovidApiRepository>();

  _HomeControllerBase() {
    getInfoWorld();
    getInfoCountry();
  }
  @observable
  bool loading = false;
  @observable
  int currentIndex = 0;

  @observable
  var textFieldController = TextEditingController();

  @observable
  World world;

  @observable
  Country country;

  @action
  getInfoWorld() async {
    loading = true;
    try {
      world = await api.getWorld();
    } catch (e) {
      throw e;
    }
    loading = false;
  }

  @action
  getInfoCountry({String countryName = "brazil"}) async {
    loading = true;
    try {
      country = await api.getCountry(country: countryName);
    } catch (e) {
      print(e.toString());
      throw e;
    }
    loading = false;
  }

  @action
  changePage(int index) {
    currentIndex = index;
  }
}
