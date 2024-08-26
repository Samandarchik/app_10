class VegetablesClass {
  final String name;
  final double price;
  final String kg;
  final String gram;
  final String title;
  VegetablesClass(
      {required this.name,
      required this.price,
      required this.kg,
      required this.gram,
      required this.title});
}

List<VegetablesClass> vegetablesList = [
  VegetablesClass(
      name: "Boston Lettuce",
      price: 1.10,
      kg: "piece",
      gram: "~ 150 gr / piece",
      title:
          "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."),
  VegetablesClass(
      name: "Purple Cauliflower",
      price: 1.85,
      kg: "kg",
      gram: "",
      title:
          "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."),
  VegetablesClass(
      name: "Savoy Cabbage", price: 1.45, kg: "kg", gram: "", title: ""),
  VegetablesClass(
      name: "Boston Lettuce", price: 1.42, kg: "kg", gram: "", title: ""),
  VegetablesClass(
      name: "Boston Lettuce", price: 2.56, kg: "kg", gram: "", title: ""),
  VegetablesClass(
      name: "Boston Lettuce", price: 3.52, kg: "kg", gram: "", title: ""),
  VegetablesClass(
      name: "Boston Lettuce", price: 1.35, kg: "kg", gram: "", title: ""),
];
