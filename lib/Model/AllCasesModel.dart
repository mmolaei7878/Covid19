class AllCasesModel {
  final int cases;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int todayRecovered;
  final int active;

  AllCasesModel(
      {this.active,
      this.cases,
      this.deaths,
      this.recovered,
      this.todayCases,
      this.todayDeaths,
      this.todayRecovered});
  AllCasesModel.fromJson(Map<String, dynamic> json)
      : cases = json['cases'],
        todayCases = json['todayCases'],
        deaths = json['deaths'],
        todayDeaths = json['todayDeaths'],
        recovered = json['recovered'],
        todayRecovered = json['todayRecovered'],
        active = json['active'];
}
