class World {
  int cases;
  int deaths;
  int recovered;
  int affectedCountries;
  DateTime lastUpdate;

  World({
    this.cases,
    this.deaths,
    this.affectedCountries,
    this.lastUpdate,
    this.recovered,
  });

  factory World.fromJson(Map doc) {
    return World(
      cases: doc['cases'],
      deaths: doc['deaths'],
      recovered: doc['recovered'],
      affectedCountries: doc['affectedCountries'],
      lastUpdate: new DateTime.fromMillisecondsSinceEpoch(doc['updated']),
    );
  }
}
