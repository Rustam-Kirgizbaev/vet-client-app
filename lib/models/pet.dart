class Pet {
  final String id;
  final String name;
  final String type;
  final List<String> dates;

  Pet(
      {required this.id,
      required this.name,
      required this.type,
      required this.dates});
}

List<Pet> pets = [
  Pet(
      id: "1234567890",
      name: "Awesome",
      type: "Dog",
      dates: ["22 February 2022", "8 March 2022"]),
  Pet(
      id: "1234567891",
      name: "Olapar",
      type: "Dog",
      dates: ["12 February 2022", "1 March 2022", "6 Aprel 2022"]),
  Pet(
      id: "1234567892",
      name: "Kitten",
      type: "Cat",
      dates: ["20 February 2022", "3 March 2022"]),
];
