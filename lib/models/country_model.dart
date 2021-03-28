import 'package:covid19/models/world_model.dart';

class Country extends World {
  String name;
  int todayDeaths;
  int critical;
  String urlCountryFlag;

  Country(
      {this.name,
      this.critical,
      this.todayDeaths,
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
      todayDeaths: doc['todayDeaths'],
      name: doc['country'],
      critical: doc['critical'],
      urlCountryFlag: doc['countryInfo']['flag'],
    );
  }
}
