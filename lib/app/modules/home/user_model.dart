class User {
  int? id;
  String? nama;
  String? nim;
  String? jenisKelamin;
  String? perguruanTinggi;
  String? programStudi;
  String? jenjang;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.nama,
      this.nim,
      this.jenisKelamin,
      this.perguruanTinggi,
      this.programStudi,
      this.jenjang,
      this.createdAt,
      this.updatedAt});

  User.f(json) {
    id = json['id'];
    nama = json['nama'];
    nim = json['nim'];
    jenisKelamin = json['jenis_kelamin'];
    perguruanTinggi = json['perguruan_tinggi'];
    programStudi = json['program_studi'];
    jenjang = json['jenjang'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson(value) {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['nim'] = nim;
    data['jenis_kelamin'] = jenisKelamin;
    data['perguruan_tinggi'] = perguruanTinggi;
    data['program_studi'] = programStudi;
    data['jenjang'] = jenjang;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }

  void dataToUser(List data,List<User> dataUser){
    data.forEach((element) {
        dataUser.add(
          User(
              id: element['id'],
              nama: element['nama'],
              nim: element['nim'],
              jenisKelamin: element['jenis_kelamin'],
              perguruanTinggi: element['perguruan_tinggi'],
              programStudi: element['program_studi'],
              jenjang: element['jenjang'],
              createdAt: element['createdAt'],
              updatedAt: element['updatedAt']),
        );
      });
  }
}
