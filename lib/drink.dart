class Drink {
  final String thName;
  final String enName;
  final double price;
  final String value;

  Drink(
      {required this.thName,
      required this.enName,
      required this.price,
      required this.value});

  static List<Drink> getDrink() {
    return[
      Drink(
        thName: "ชาไทย",
        enName: "Cha tea",
        value: "Cha tea",
        price: 60),
      Drink(
          thName: "ชาเขียว",
          enName: "Green tea",
          value: "Green tea",
          price: 55),
      Drink(
          thName: "ชามะนาว",
          enName: "Lemon tea",
          value: "Lemon tea",
          price: 50),
    ];
  }
}
