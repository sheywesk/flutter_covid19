import 'package:covid19/models/country_model.dart';
import 'package:covid19/models/world_model.dart';
import 'package:dio/dio.dart';

class CovidApiRepository {
  final Dio _dio = Dio();
  String url = "https://corona.lmao.ninja/v3/covid-19";

  Future<World> getWorld() async {
    Response response = await _dio.get('$url/all');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return World.fromJson(response.data);
    }
  }

  Future<Country> getCountry({String country}) async {
    Response response = await _dio.get('$url/countries/$country');
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return Country.fromJson(response.data);
    }
  }
}
