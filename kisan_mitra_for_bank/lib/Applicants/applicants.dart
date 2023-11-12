//Dummy Data for Persons

class Person {
  final int personId;
  final int age;
  final String name;
  final String location;
  final int number;
  final double income;
  final int asset_value;
  final List<String> crops;
  final List<String> gov_schemes;
  final String loan_amount;
  final String loan_crop;
  final String email;

  final int cibil_score;

  Person(
      this.personId,
      this.age,
      this.name,
      this.income,
      this.asset_value,
      this.crops,
      this.gov_schemes,
      this.loan_amount,
      this.loan_crop,
      this.cibil_score,
      this.location,
      this.number,
      this.email);

  static List<Person> personList = [
    Person(
        1,
        30,
        "John Doe",
        50000.0,
        150000,
        ["Wheat", "Rice", "Maize"],
        ["PM-Kisan", "Crop Insurance"],
        "50000",
        "Rice",
        750,
        "Assam",
        8912338791,
        "joe@gmail.com"),
    Person(
        2,
        25,
        "Jane Smith",
        40000.0,
        120000,
        ["Cotton", "Soybean", "Barley"],
        ["PM-Kisan"],
        "30000",
        "Cotton",
        800,
        "Kerala",
        9497668914,
        "smith@gmail.com"),
    Person(
        3,
        35,
        "Robert Johnson",
        60000.0,
        180000,
        ["Pulses", "Oilseeds", "Corn"],
        ["PM-Kisan", "KCC"],
        "70000",
        "Pulses",
        720,
        "Tamil Nadu",
        8912338791,
        "johnson@gmail.com"),
    // Add more persons as needed
  ];
}
