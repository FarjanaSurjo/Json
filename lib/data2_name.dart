class DataName {
  final String name;
  final int age;
  final String city;
  DataName({
    required this.name,
    required this.age,
    required this.city,
  });

  factory DataName.fromJson(Map<String, dynamic> json) {
    return DataName(name: json['name'], age: json['age'], city: json['city']);
  }
}
