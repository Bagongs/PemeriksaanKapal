import 'dart:convert';

Perlengkapan perlengkapanFromJson(String str) =>
    Perlengkapan.fromJson(json.decode(str));

String perlengkapanToJson(Perlengkapan data) => json.encode(data.toJson());

class Perlengkapan {
  Perlengkapan({
    required this.data,
  });

  List<laporan> data;

  factory Perlengkapan.fromJson(Map<String, dynamic> json) => Perlengkapan(
        data: List<laporan>.from(json["data"].map((x) => laporan.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class laporan {
  laporan({
    required this.idKategoriPemeriksaan,
    required this.idKategori,
    required this.namaKategoriPemeriksaan,
    required this.laporanKhusus,
    required this.dataSubNilai,
  });

  String idKategoriPemeriksaan;
  String idKategori;
  String namaKategoriPemeriksaan;
  String laporanKhusus;
  List<DataSubNilai> dataSubNilai;

  factory laporan.fromJson(Map<String, dynamic> json) => laporan(
        idKategoriPemeriksaan: json["id_kategori_pemeriksaan"],
        idKategori: json["id_kategori"],
        namaKategoriPemeriksaan: json["nama_kategori_pemeriksaan"],
        laporanKhusus: json["laporan_khusus"],
        dataSubNilai: List<DataSubNilai>.from(
            json["data_sub_nilai"].map((x) => DataSubNilai.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id_kategori_pemeriksaan": idKategoriPemeriksaan,
        "id_kategori": idKategori,
        "nama_kategori_pemeriksaan": namaKategoriPemeriksaan,
        "laporan_khusus": laporanKhusus,
        "data_sub_nilai":
            List<dynamic>.from(dataSubNilai.map((x) => x.toJson())),
      };
}

class DataSubNilai {
  DataSubNilai({
    required this.idKategoriPemeriksaanHdr,
    required this.idKategoriPemeriksaan,
    required this.namaPemeriksaanHdr,
  });

  String idKategoriPemeriksaanHdr;
  String idKategoriPemeriksaan;
  String namaPemeriksaanHdr;

  factory DataSubNilai.fromJson(Map<String, dynamic> json) => DataSubNilai(
        idKategoriPemeriksaanHdr: json["id_kategori_pemeriksaan_hdr"],
        idKategoriPemeriksaan: json["id_kategori_pemeriksaan"],
        namaPemeriksaanHdr: json["nama_pemeriksaan_hdr"],
      );

  Map<String, dynamic> toJson() => {
        "id_kategori_pemeriksaan_hdr": idKategoriPemeriksaanHdr,
        "id_kategori_pemeriksaan": idKategoriPemeriksaan,
        "nama_pemeriksaan_hdr": namaPemeriksaanHdr,
      };
}
