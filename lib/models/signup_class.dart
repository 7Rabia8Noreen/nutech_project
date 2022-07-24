class SignUpClass {
  final String name;
  final String idCnic;
  final String short_name;
  final String contact_no;
  final String password;
  final String password_confirmation;

  SignUpClass(
      {required this.name,
      required this.idCnic,
      required this.short_name,
      required this.contact_no,
      required this.password,
      required this.password_confirmation});

  factory SignUpClass.fromJson(Map<String, dynamic> json) {
    return SignUpClass(
      name: json['name'],
      idCnic: json['idCnic'],
      short_name: json['short_name'],
      contact_no: json['contact_no'],
      password: json['password'],
      password_confirmation: json['password_confirmation'],
    );
  }
}
