import 'package:covid19/models/world_model.dart';

class Country extends World {
  String name;
  String urlCountryFlag;

  Country(
      {this.name,
      this.urlCountryFlag,
      int cases,
      int deaths,
      int recovered})
      : super(
          cases: cases,
          deaths: deaths,
          recovered: recovered,
        );

  factory Country.fromJson(Map doc) {
    return Country(
      cases: doc['cases'],
      deaths: doc['deaths'],
      recovered: doc['recovered'],
      name: doc['country'],
      urlCountryFlag: doc['countryInfo']['flag'],
    );
  }
}
