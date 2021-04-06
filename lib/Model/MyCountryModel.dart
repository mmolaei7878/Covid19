class CountryInfo {
  final String flag;
  CountryInfo({this.flag});
  CountryInfo.fromJson(Map<String, dynamic> json) : flag = json['flag'];
}

class MyCountryModel {
  final String countryname;

  final Map<String, dynamic> flag;

  final int todayCases;

  final int todayDeaths;

  final int todayRecovered;

  MyCountryModel(
      {this.countryname,
      this.todayCases,
      this.flag,
      this.todayDeaths,
      this.todayRecovered});
  MyCountryModel.fromJson(Map<String, dynamic> json)
      : todayCases = json['todayCases'],
        flag = json['countryInfo'],
        countryname = json['country'],
        todayDeaths = json['todayDeaths'],
        todayRecovered = json['todayRecovered'];
}
