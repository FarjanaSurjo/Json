class Parson {
  final String name;
  final int age;
  final String city;

  Parson({required this.name, required this.age, required this.city});

  factory Parson.fromJson(Map<String, dynamic> json) {
    var parsonListFromJson = json['parson'] as List;
    List<Parson> parsonList = parsonListFromJson
        .map((i) => Parson.fromJson(i as Map<String, dynamic>))
        .toList();
    return Parson(
      name: json['name'],
      age: json['age'],
      city: json['city'],
    );
  }
}
