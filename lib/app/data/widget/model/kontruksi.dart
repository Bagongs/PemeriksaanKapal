import 'dart:convert';

Kontruksi? kontruksiFromJson(String str) =>
    Kontruksi.fromJson(json.decode(str));

String kontruksiToJson(Kontruksi? data) => json.encode(data!.toJson());

class Kontruksi {
  Kontruksi({
    this.success,
    this.message,
    this.data,
    this.catatanLaporanPemeriksaan,
  });

  bool? success;
  String? message;
  List<Datum?>? data;
  List<CatatanLaporanPemeriksaan?>? catatanLaporanPemeriksaan;

  factory Kontruksi.fromJson(Map<String, dynamic> json) => Kontruksi(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum?>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        catatanLaporanPemeriksaan: json["catatan_laporan_pemeriksaan"] == null
            ? []
            : List<CatatanLaporanPemeriksaan?>.from(
                json["catatan_laporan_pemeriksaan"]!
                    .map((x) => CatatanLaporanPemeriksaan.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x!.toJson())),
        "catatan_laporan_pemeriksaan": catatanLaporanPemeriksaan == null
            ? []
            : List<dynamic>.from(
                catatanLaporanPemeriksaan!.map((x) => x!.toJson())),
      };
}

class CatatanLaporanPemeriksaan {
  CatatanLaporanPemeriksaan({
    this.id,
    this.usersId,
    this.no,
    this.itemPemeriksaan,
    this.aturanRegulasi,
    this.checklist,
    this.keterangan,
    this.idKontruksi,
  });

  String? id;
  String? usersId;
  String? no;
  String? itemPemeriksaan;
  String? aturanRegulasi;
  String? checklist;
  String? keterangan;
  String? idKontruksi;

  factory CatatanLaporanPemeriksaan.fromJson(Map<String, dynamic> json) =>
      CatatanLaporanPemeriksaan(
        id: json["id"],
        usersId: json["users_id"],
        no: json["no"],
        itemPemeriksaan: json["item_pemeriksaan"],
        aturanRegulasi: json["aturan_regulasi"],
        checklist: json["checklist"],
        keterangan: json["keterangan"],
        idKontruksi: json["id_kontruksi"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "users_id": usersId,
        "no": no,
        "item_pemeriksaan": itemPemeriksaan,
        "aturan_regulasi": aturanRegulasi,
        "checklist": checklist,
        "keterangan": keterangan,
        "id_kontruksi": idKontruksi,
      };
}

class Datum {
  Datum({
    this.id,
    this.usersId,
    this.namaKapal,
    this.pemilikSuratLaut,
    this.pelabuhan,
    this.daerahPelayaran,
    this.jenisPemeriksaan,
    this.tglPemeriksaan,
    this.callSign,
    this.kebangsaanPendaftaran,
    this.beratKotor,
    this.tglPeletakanLunas,
    this.noKlasifikasi,
    this.namaAlmatPemilikPerusahaan,
    this.jenisKapal,
    this.tandaTanganInspector,
    this.catatanLaporanPemeriksaan,
    this.dataKhususInformasiTambahan,
    this.daftarDataYgTidakSesuai,
    this.cttKesimpulan,
    this.nip,
  });

  String? id;
  String? usersId;
  String? namaKapal;
  String? pemilikSuratLaut;
  String? pelabuhan;
  String? daerahPelayaran;
  String? jenisPemeriksaan;
  DateTime? tglPemeriksaan;
  String? callSign;
  String? kebangsaanPendaftaran;
  String? beratKotor;
  DateTime? tglPeletakanLunas;
  String? noKlasifikasi;
  String? namaAlmatPemilikPerusahaan;
  String? jenisKapal;
  String? tandaTanganInspector;
  String? catatanLaporanPemeriksaan;
  String? dataKhususInformasiTambahan;
  String? daftarDataYgTidakSesuai;
  String? cttKesimpulan;
  String? nip;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        usersId: json["users_id"],
        namaKapal: json["nama_kapal"],
        pemilikSuratLaut: json["pemilik_surat_laut"],
        pelabuhan: json["pelabuhan"],
        daerahPelayaran: json["daerah_pelayaran"],
        jenisPemeriksaan: json["jenis_pemeriksaan"],
        tglPemeriksaan: DateTime.parse(json["tgl_pemeriksaan"]),
        callSign: json["call_sign"],
        kebangsaanPendaftaran: json["kebangsaan_pendaftaran"],
        beratKotor: json["berat_kotor"],
        tglPeletakanLunas: DateTime.parse(json["tgl_peletakan_lunas"]),
        noKlasifikasi: json["no_klasifikasi"],
        namaAlmatPemilikPerusahaan: json["nama_almat_pemilik_perusahaan"],
        jenisKapal: json["jenis_kapal"],
        tandaTanganInspector: json["tanda_tangan_inspector"],
        catatanLaporanPemeriksaan: json["catatan_laporan_pemeriksaan"],
        dataKhususInformasiTambahan: json["data_khusus_informasi_tambahan"],
        daftarDataYgTidakSesuai: json["daftar_data_yg_tidak_sesuai"],
        cttKesimpulan: json["ctt_kesimpulan"],
        nip: json["nip"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "users_id": usersId,
        "nama_kapal": namaKapal,
        "pemilik_surat_laut": pemilikSuratLaut,
        "pelabuhan": pelabuhan,
        "daerah_pelayaran": daerahPelayaran,
        "jenis_pemeriksaan": jenisPemeriksaan,
        "tgl_pemeriksaan":
            "${tglPemeriksaan!.year.toString().padLeft(4, '0')}-${tglPemeriksaan!.month.toString().padLeft(2, '0')}-${tglPemeriksaan!.day.toString().padLeft(2, '0')}",
        "call_sign": callSign,
        "kebangsaan_pendaftaran": kebangsaanPendaftaran,
        "berat_kotor": beratKotor,
        "tgl_peletakan_lunas":
            "${tglPeletakanLunas!.year.toString().padLeft(4, '0')}-${tglPeletakanLunas!.month.toString().padLeft(2, '0')}-${tglPeletakanLunas!.day.toString().padLeft(2, '0')}",
        "no_klasifikasi": noKlasifikasi,
        "nama_almat_pemilik_perusahaan": namaAlmatPemilikPerusahaan,
        "jenis_kapal": jenisKapal,
        "tanda_tangan_inspector": tandaTanganInspector,
        "catatan_laporan_pemeriksaan": catatanLaporanPemeriksaan,
        "data_khusus_informasi_tambahan": dataKhususInformasiTambahan,
        "daftar_data_yg_tidak_sesuai": daftarDataYgTidakSesuai,
        "ctt_kesimpulan": cttKesimpulan,
        "nip": nip,
      };
}
