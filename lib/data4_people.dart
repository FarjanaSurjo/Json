class People {
  final String name;
  final int age;
  final Address address;
  final List<Friend> friends;

  People({
    required this.name,
    required this.age,
    required this.address,
    required this.friends,
  });

  factory People.fromJson(Map<String, dynamic> json) {
    var friendsFromJson = json['friends'] as List;
    List<Friend> friendsList =
        friendsFromJson.map((i) => Friend.fromJson(i)).toList();
    return People(
      name: json['name'],
      age: json['age'],
      address: Address.fromJson(json['address']),
      friends: friendsList,
    );
  }
}

class Address {
  final String city;
  final String country;
  Address({
    required this.city,
    required this.country,
  });
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(city: json['city'], country: json['country']);
  }
}

class Friend {
  final String name;
  final List<String> hobbies;
  Friend({required this.name, required this.hobbies});
  factory Friend.fromJson(Map<String, dynamic> json) {
    return Friend(
      name: json['name'],
      hobbies: List<String>.from(json['hobbies']),
    );
  }
}
