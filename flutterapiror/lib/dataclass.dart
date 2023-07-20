class cData {
  String? name;
  String? email;
  String? gender;

  cData({this.name, this.email, this.gender});

  factory cData.fromJson(Map<String, dynamic> json) {
    return cData(
      name: json['name'],
      email: json['email'],
      gender: json['gender'],
    );
  }
}
