class Students {
  final int id;
  final String name;
  final String city;
  final int age;
  final List<Friends> friends;

  Students(
      {required this.id,
      required this.name,
      required this.city,
      required this.age,
      required this.friends});

  factory Students.fromJson(Map<String, dynamic> json) {
    var studentsListFromJson = json['students'] as List;
    var friendsListFromJson = json['friend'] as List;
    List<Students> studentsList =
        studentsListFromJson.map((i) => Students.fromJson(i)).toList();
    List<Friends> friendsList =
        friendsListFromJson.map((i) => Friends.fromJson(i)).toList();

    return Students(
        id: json['id'],
        name: json['name'],
        city: json['city'],
        age: json['age'],
        friends: friendsList);
  }
}

class Friends {
  final String name;
  final List<String> hobbies;
  Friends({required this.name, required this.hobbies});
  factory Friends.fromJson(Map<String, dynamic> json) {
    return Friends(
        name: json['name'], hobbies: List<String>.from(json['hobbies']));
  }
}
