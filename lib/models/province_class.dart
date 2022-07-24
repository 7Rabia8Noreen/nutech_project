class Province {
  final int id;
  final String name;
  final int country_id;
  Province({
    required this.id,
    required this.name,
    required this.country_id,
  });

  factory Province.fromJson(Map<String, dynamic> json) {
    return Province(
      id: json['id'],
      name: json['name'],
      country_id: json['country_id'],
    );
  }
}
