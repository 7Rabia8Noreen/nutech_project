class City {
  final int id;
  final String name;
  final int province_id;
  City({
    required this.id,
    required this.name,
    required this.province_id,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      province_id: json['province_id'],
    );
  }
}
