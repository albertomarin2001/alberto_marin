class Parcial {
  String suerte;


  Parcial({this.suerte});

  Parcial.newStudent(String phrase) {
    this.suerte = phrase;
  }

  factory Parcial.fromJson(Map<dynamic, dynamic> json) {
    return Parcial(
      suerte: json['Suerte'] as String,
    );
  }
}