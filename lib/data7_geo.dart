class Geo {
  final String type;
  final List<Features> features;
  Geo({required this.type, required this.features});
  factory Geo.fromJson(Map<String, dynamic> json) {
    var featuresListFromJson = json['features'] as List;
    List<Features> featuresList =
        featuresListFromJson.map((i) => Features.fromJson(i)).toList();
    return Geo(type: json['type'], features: featuresList);
  }
}

class Features {
  final String type;
  final Properties properties;
  final Geometry geometry;
  Features(
      {required this.type, required this.properties, required this.geometry});
  factory Features.fromJson(Map<String, dynamic> json) {
    return Features(
        type: json['type'],
        properties: Properties.fromJson(json['properties']),
        geometry: Geometry.fromJson(json['geometry']));
  }
}

class Properties {
  Properties();
  factory Properties.fromJson(Map<String, dynamic> json) {
    return Properties();
  }
}

class Geometry {
  final String type;
  final List<double> coordinates;
  Geometry({required this.type, required this.coordinates});
  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
        type: json['type'],
        coordinates: List<double>.from(json['coordinates']));
  }
}
