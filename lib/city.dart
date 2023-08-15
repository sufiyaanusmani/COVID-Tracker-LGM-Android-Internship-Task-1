class City {
  final String name;
  final String state;
  int confirmed = 0;
  int deceased = 0;
  int recovered = 0;
  int deltaConfirmed = 0;
  int deltaDeceased = 0;
  int deltaRecovered = 0;

  City(
      {required this.name,
      required this.state,
      required this.confirmed,
      required this.deceased,
      required this.recovered,
      required this.deltaConfirmed,
      required this.deltaDeceased,
      required this.deltaRecovered});
}
