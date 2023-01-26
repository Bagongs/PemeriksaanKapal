import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:signature/signature.dart';

class FormPerlengkapanController extends GetxController {
  RxInt valueDataList = 0.obs;
  RxInt valueDataSubList = 0.obs;

  RxList<Map<String, dynamic>> dataList = <Map<String, dynamic>>[
    {
      "id_kategori_pemeriksaan": 1,
      "id_kategori": 1,
      "nama_kategori_pemeriksaan":
          "Keterangan Tentang Perlengkapan Keselamatan Jiwa",
      "laporan_khusus": 0,
    },
    {
      "id_kategori_pemeriksaan": 2,
      "id_kategori": 1,
      "nama_kategori_pemeriksaan":
          "Keterangan Tentang Sistem dan Perlengkapan Navigasi",
      "laporan_khusus": 0,
    },
    {
      "id_kategori_pemeriksaan": 3,
      "id_kategori": 1,
      "nama_kategori_pemeriksaan":
          "Keterangan tentang perlengkapan pemadam kebakaran",
      "laporan_khusus": 0,
    },
    {
      "id_kategori_pemeriksaan": 4,
      "id_kategori": 1,
      "nama_kategori_pemeriksaan": "Perlengkapan pencegahan pencemaran",
      "laporan_khusus": 1,
    },
    {
      "id_kategori_pemeriksaan": 5,
      "id_kategori": 1,
      "nama_kategori_pemeriksaan": "Perlengkapan medis",
      "laporan_khusus": 1,
    },
  ].obs;

  RxList<Map<String, dynamic>> dataSubList = <Map<String, dynamic>>[
    {
      "id_kategori_pemeriksaan_hdr": 1,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Sekoci Penolong",
    },
    {
      "id_kategori_pemeriksaan_hdr": 2,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Rakit Penolong"
    },
    {
      "id_kategori_pemeriksaan_hdr": 3,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Sekoci Penyelamat"
    },
    {
      "id_kategori_pemeriksaan_hdr": 4,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Pelampung Penolong"
    },
    {
      "id_kategori_pemeriksaan_hdr": 8,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Jaket Penolong"
    },
    {
      "id_kategori_pemeriksaan_hdr": 9,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Baju Cebur"
    },
    {
      "id_kategori_pemeriksaan_hdr": 10,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Alat Pelontar Tali"
    },
    {
      "id_kategori_pemeriksaan_hdr": 16,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Isyarat Marabahaya"
    },
    {
      "id_kategori_pemeriksaan_hdr": 17,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Transponder Radar",
    },
    {
      "id_kategori_pemeriksaan_hdr": 18,
      "id_kategori_pemeriksaan": 1,
      "nama_pemeriksaan_hdr": "Perangkat telepon Radio VHF dua arah"
    },
    {
      "id_kategori_pemeriksaan_hdr": 11,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Pedoman Magnt Standar"
    },
    {
      "id_kategori_pemeriksaan_hdr": 12,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Pedoman Magnit Cadangan"
    },
    {
      "id_kategori_pemeriksaan_hdr": 20,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Pedoman Gasing"
    },
    {
      "id_kategori_pemeriksaan_hdr": 21,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Repeater Baringan Pedoman Gasing"
    },
    {
      "id_kategori_pemeriksaan_hdr": 22,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Pelorus atau alat baring pedoman"
    },
    {
      "id_kategori_pemeriksaan_hdr": 23,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Alat koreksi garis haluan"
    },
    {
      "id_kategori_pemeriksaan_hdr": 24,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Alat Pencakar Penuntut Haluan"
    },
    {
      "id_kategori_pemeriksaan_hdr": 25,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Sistem Kendali Haluan"
    },
    {
      "id_kategori_pemeriksaan_hdr": 26,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Peta Laut/Sistem Peraga Peta"
    },
    {
      "id_kategori_pemeriksaan_hdr": 27,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Publikasi Nautika"
    },
    {
      "id_kategori_pemeriksaan_hdr": 28,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Alat Penerima Sistem Satelit"
    },
    {
      "id_kategori_pemeriksaan_hdr": 29,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Radar"
    },
    {
      "id_kategori_pemeriksaan_hdr": 30,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Alat bantu ploting"
    },
    {
      "id_kategori_pemeriksaan_hdr": 31,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Alat bantu garis haluan otomatis"
    },
    {
      "id_kategori_pemeriksaan_hdr": 32,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Alat Bantu Plotting Elektronik"
    },
    {
      "id_kategori_pemeriksaan_hdr": 33,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Sistem identifikasi otomatis"
    },
    {
      "id_kategori_pemeriksaan_hdr": 34,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Perekam data pelayaran"
    },
    {
      "id_kategori_pemeriksaan_hdr": 35,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Alat ukur kecepatan"
    },
    {
      "id_kategori_pemeriksaan_hdr": 36,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Perum Gema"
    },
    {
      "id_kategori_pemeriksaan_hdr": 37,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr":
          "Petunjuk daun kemudi,baling-baling pendorong,Slip dan mode operasional"
    },
    {
      "id_kategori_pemeriksaan_hdr": 38,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Corong Pemberitahuan"
    },
    {
      "id_kategori_pemeriksaan_hdr": 39,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Telepon ketempat pengemudian"
    },
    {
      "id_kategori_pemeriksaan_hdr": 40,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Lampu Isyarat Siang Hari"
    },
    {
      "id_kategori_pemeriksaan_hdr": 41,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Reflektor Radar"
    },
    {
      "id_kategori_pemeriksaan_hdr": 42,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Kode Isyarat International"
    },
    {
      "id_kategori_pemeriksaan_hdr": 43,
      "id_kategori_pemeriksaan": 2,
      "nama_pemeriksaan_hdr": "Buku Iamsar"
    }
  ].obs;

  void addFormPerlengkapan(
    String controllerSekociPenolong1,
    String controllerSekociPenolong2,
    String controllerSekociPenolong3,
    String controllerSekociPenolong4,
    String controllerRakitPenolong1,
    String controllerRakitPenolong2,
    String controllerRakitPenolong3,
    String controllerRakitPenolong4,
    String controllerSekociPenyelamat1,
    String controllerSekociPenyelamat2,
    String controllerSekociPenyelamat3,
    String controllerSekociPenyelamat4,
    String controllerPelampungPenolong1,
    String controllerPelampungPenolong2,
    String controllerPelampungPenolong3,
    String controllerPelampungPenolong4,
    String controllerJaketPenolong1,
    String controllerJaketPenolong2,
    String controllerJaketPenolong3,
    String controllerJaketPenolong4,
    String controllerBajuCebur1,
    String controllerBajuCebur2,
    String controllerBajuCebur3,
    String controllerBajuCebur4,
    String controllerAlatPelontarTali1,
    String controllerAlatPelontarTali2,
    String controllerAlatPelontarTali3,
    String controllerAlatPelontarTali4,
    String controllerIsyaratMarabahaya1,
    String controllerIsyaratMarabahaya2,
    String controllerIsyaratMarabahaya3,
    String controllerIsyaratMarabahaya4,
    String controllerTransponderRadar1,
    String controllerTransponderRadar2,
    String controllerTransponderRadar3,
    String controllerTransponderRadar4,
    String controllerRadioVHF1,
    String controllerRadioVHF2,
    String controllerRadioVHF3,
    String controllerRadioVHF4,
    String terpilih1,
    String terpilih2,
    String terpilih3,
    String terpilih4,
    String terpilih5,
    String terpilih6,
    String terpilih7,
    String terpilih8,
    String terpilih9,
    String terpilih10,
  ) async {
    try {
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil Menambahkan Data",
        textConfirm: "OK",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Error",
        middleText: "Tidak Berhasil Menambahkan Data",
        textConfirm: "OK",
      );
    }
  }

  //1
  var controllerSekociPenolong1 = TextEditingController();
  var controllerSekociPenolong2 = TextEditingController();
  var controllerSekociPenolong3 = TextEditingController();
  var controllerSekociPenolong4 = TextEditingController();
  var terpilih1 = "NA".obs;

  //2
  var controllerRakitPenolong1 = TextEditingController();
  var controllerRakitPenolong2 = TextEditingController();
  var controllerRakitPenolong3 = TextEditingController();
  var controllerRakitPenolong4 = TextEditingController();
  var terpilih2 = "NA".obs;

  //3
  var controllerSekociPenyelamat1 = TextEditingController();
  var controllerSekociPenyelamat2 = TextEditingController();
  var controllerSekociPenyelamat3 = TextEditingController();
  var controllerSekociPenyelamat4 = TextEditingController();
  var terpilih3 = "NA".obs;

  //4
  var controllerPelampungPenolong1 = TextEditingController();
  var controllerPelampungPenolong2 = TextEditingController();
  var controllerPelampungPenolong3 = TextEditingController();
  var controllerPelampungPenolong4 = TextEditingController();
  var terpilih4 = "NA".obs;

  //5
  var controllerJaketPenolong1 = TextEditingController();
  var controllerJaketPenolong2 = TextEditingController();
  var controllerJaketPenolong3 = TextEditingController();
  var controllerJaketPenolong4 = TextEditingController();
  var terpilih5 = "NA".obs;

  var controllerBajuCebur1 = TextEditingController();
  var controllerBajuCebur2 = TextEditingController();
  var controllerBajuCebur3 = TextEditingController();
  var controllerBajuCebur4 = TextEditingController();
  var terpilih6 = "NA".obs;

  var controllerAlatPelontarTali1 = TextEditingController();
  var controllerAlatPelontarTali2 = TextEditingController();
  var controllerAlatPelontarTali3 = TextEditingController();
  var controllerAlatPelontarTali4 = TextEditingController();
  var terpilih7 = "NA".obs;

  var controllerIsyaratMarabahaya1 = TextEditingController();
  var controllerIsyaratMarabahaya2 = TextEditingController();
  var controllerIsyaratMarabahaya3 = TextEditingController();
  var controllerIsyaratMarabahaya4 = TextEditingController();
  var terpilih8 = "NA".obs;

  var controllerTransponderRadar1 = TextEditingController();
  var controllerTransponderRadar2 = TextEditingController();
  var controllerTransponderRadar3 = TextEditingController();
  var controllerTransponderRadar4 = TextEditingController();
  var terpilih9 = "NA".obs;

  var controllerRadioVHF1 = TextEditingController();
  var controllerRadioVHF2 = TextEditingController();
  var controllerRadioVHF3 = TextEditingController();
  var controllerRadioVHF4 = TextEditingController();
  var terpilih10 = "NA".obs;

  var controllerTotalPelayar = TextEditingController();
  var controllerDataTIdakSesuai = TextEditingController();

  var abc = "false".obs;

//

  var pemeriksaanTerpilih2 = "Pemeriksaan Pertama".obs;
  var terpilih_I = "Diterima".obs;
  var terpilih_II = "Sertifikat dapat diterbitkan".obs;
  TextEditingController tanggalController1 = TextEditingController(
      text: DateFormat("dd MMMM yyyy").format(DateTime.now()));

  final count = 0.obs;
  final formkey = GlobalKey<FormBuilderState>();

  final SignatureController ttdController = SignatureController(
    penStrokeWidth: 1,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );

  @override
  void onInit() {
    valueDataList.value = dataList[0]["id_kategori_pemeriksaan"];
    valueDataSubList.value = dataSubList[0]["id_kategori_pemeriksaan_hdr"];
    ttdController.addListener(() => print('Value changed'));
    pemeriksaanTerpilih2;
    controllerSekociPenolong1;
    controllerSekociPenolong2;
    controllerSekociPenolong3;
    controllerSekociPenolong4;
    controllerRakitPenolong1;
    controllerRakitPenolong2;
    controllerRakitPenolong3;
    controllerRakitPenolong4;
    controllerSekociPenyelamat1;
    controllerSekociPenyelamat2;
    controllerSekociPenyelamat3;
    controllerSekociPenyelamat4;
    controllerPelampungPenolong1;
    controllerPelampungPenolong2;
    controllerPelampungPenolong3;
    controllerPelampungPenolong4;
    controllerJaketPenolong1;
    controllerJaketPenolong2;
    controllerJaketPenolong3;
    controllerJaketPenolong4;
    controllerBajuCebur1;
    controllerBajuCebur2;
    controllerBajuCebur3;
    controllerBajuCebur4;
    controllerAlatPelontarTali1;
    controllerAlatPelontarTali2;
    controllerAlatPelontarTali3;
    controllerAlatPelontarTali4;
    controllerIsyaratMarabahaya1;
    controllerIsyaratMarabahaya2;
    controllerIsyaratMarabahaya3;
    controllerIsyaratMarabahaya4;
    controllerTransponderRadar1;
    controllerTransponderRadar2;
    controllerTransponderRadar3;
    controllerTransponderRadar4;
    controllerRadioVHF1;
    controllerRadioVHF2;
    controllerRadioVHF3;
    controllerRadioVHF4;
    terpilih1;
    terpilih2;
    terpilih3;
    terpilih4;
    terpilih5;
    terpilih6;
    terpilih7;
    terpilih8;
    terpilih9;
    terpilih10;
    terpilih_I;
    terpilih_II;
    tanggalController1;
    super.onInit();
  }

  //; @override;
  //; void; onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    controllerSekociPenolong1.dispose();
    controllerSekociPenolong2.dispose();
    controllerSekociPenolong3.dispose();
    controllerSekociPenolong4.dispose();
    controllerRakitPenolong1.dispose();
    controllerRakitPenolong2.dispose();
    controllerRakitPenolong3.dispose();
    controllerRakitPenolong4.dispose();
    controllerSekociPenyelamat1.dispose();
    controllerSekociPenyelamat2.dispose();
    controllerSekociPenyelamat3.dispose();
    controllerSekociPenyelamat4.dispose();
    controllerPelampungPenolong1.dispose();
    controllerPelampungPenolong2.dispose();
    controllerPelampungPenolong3.dispose();
    controllerPelampungPenolong4.dispose();
    controllerJaketPenolong1.dispose();
    controllerJaketPenolong2.dispose();
    controllerJaketPenolong3.dispose();
    controllerJaketPenolong4.dispose();
    controllerBajuCebur1.dispose();
    controllerBajuCebur2.dispose();
    controllerBajuCebur3.dispose();
    controllerBajuCebur4.dispose();
    controllerAlatPelontarTali1.dispose();
    controllerAlatPelontarTali2.dispose();
    controllerAlatPelontarTali3.dispose();
    controllerAlatPelontarTali4.dispose();
    controllerIsyaratMarabahaya1.dispose();
    controllerIsyaratMarabahaya2.dispose();
    controllerIsyaratMarabahaya3.dispose();
    controllerIsyaratMarabahaya4.dispose();
    controllerTransponderRadar1.dispose();
    controllerTransponderRadar2.dispose();
    controllerTransponderRadar3.dispose();
    controllerTransponderRadar4.dispose();
    controllerRadioVHF1.dispose();
    controllerRadioVHF2.dispose();
    controllerRadioVHF3.dispose();
    controllerRadioVHF4.dispose();
    tanggalController1.dispose();

// terpilih1.dispose();
// terpilih2.dispose();
// terpilih3.dispose();
// terpilih4.dispose();
// terpilih5.dispose();
// terpilih6.dispose();
// terpilih7.dispose();
// terpilih8.dispose();
// terpilih9.dispose();
// terpilih10.dispose();
// terpilih8_4.dispose();
// terpilih8_5.dispose();
// terpilih8_6.dispose();
// terpilih9_1.dispose();
// terpilih9_2.dispose();
// terpilih10_1.dispose();
// terpilih10_2.dispose();
// terpilih10_3.dispose();
// terpilih10_4.dispose();
// terpilih10_5.dispose();
// terpilih10_6.dispose();
// terpilih10_7.dispose();
// terpilih10_8.dispose();
// terpilih10_9.dispose();
// terpilih10_10.dispose();
// terpilih10_11.dispose();
// terpilih10_12.dispose();
// terpilih10_13.dispose();
// terpilih10_14.dispose();
// terpilih10_15.dispose();
// terpilih10_16.dispose();
// terpilih10_17.dispose();
// terpilih10_18.dispose();
// terpilih10_19.dispose();
// terpilih10_23a.dispose();
// terpilih10_23b.dispose();
// terpilih10_24a.dispose();
// terpilih10_24b.dispose();
// terpilih10_24c.dispose();
// terpilih10_24d.dispose();
// terpilih10_24e.dispose();
// terpilih10_24f.dispose();
// terpilih10_24g.dispose();
// terpilih10_24h.dispose();
// terpilih10_24i.dispose();
// terpilih10_25.dispose();
// terpilih10_26.dispose();
// terpilih10_27.dispose();
// terpilih10_28.dispose();
// terpilih10_29.dispose();
// terpilih11_1.dispose();
// terpilih11_2.dispose();
// terpilih11_3.dispose();
// terpilih11_4.dispose();
// terpilih11_5.dispose();
// terpilih12_1.dispose();
// terpilih12_2.dispose();
// terpilih12_3.dispose();
// terpilih12_4.dispose();
// terpilih12_5.dispose();
// terpilih12_6.dispose();
// terpilih12_7.dispose();
// terpilih12_8.dispose();
// terpilih12_9.dispose();
// terpilih12_10.dispose();
// terpilih13_1.dispose();
// terpilih13_2.dispose();
// terpilih13_3.dispose();
// terpilih13_4.dispose();
// terpilih13_5.dispose();
// terpilih13_6.dispose();
// terpilih13_7.dispose();
// terpilih13_8.dispose();
// terpilih13_9.dispose();
// terpilih13_10.dispose();
// terpilihIi_1a.dispose();
// terpilihIi_1b.dispose();
// terpilihIi_1c.dispose();
// terpilihIi_1d.dispose();
// terpilihIi_1e.dispose();
// terpilihIi_1f.dispose();
// terpilihIi1_2.dispose();
// terpilihIi1_3.dispose();
// terpilihIi1_4.dispose();
// terpilihIi1_5.dispose();
// terpilihIi1_6.dispose();
// terpilihIi1_7.dispose();
// terpilihIi1_8.dispose();
// terpilihIi1_9.dispose();
// terpilihIi1_10.dispose();
// terpilihIi1_11a.dispose();
// terpilihIi1_11b.dispose();
// terpilihIi2_1.dispose();
// terpilihIi2_2.dispose();
// terpilihIi2_3a.dispose();
// terpilihIi2_3b.dispose();
// terpilihIi3_1a.dispose();
// terpilihIi3_1b.dispose();
// terpilihIi3_1c.dispose();
// terpilihIi3_1d.dispose();
// terpilihIi3_1e.dispose();
// terpilihIi3_1f.dispose();
// terpilihIi3_2a.dispose();
// terpilihIi3_2b.dispose();
// terpilihIi3_2c.dispose();
// terpilihIi3_2d.dispose();
// terpilihIi3_2e.dispose();
// terpilihIi3_2f.dispose();
// terpilihIi4_1a.dispose();
// terpilihIi4_1b.dispose();
// terpilihIi4_1c.dispose();
// terpilihIi4_1d.dispose();
// terpilihIi4_2.dispose();
// terpilihIi4_3.dispose();
// terpilihIi4_4.dispose();
// terpilihIi4_5.dispose();
// terpilihIi4_6.dispose();
// terpilihIi5_1.dispose();
// terpilihIi5_2.dispose();
// terpilihIi5_3.dispose();
// terpilihIi5_4.dispose();
// terpilihIi5_5.dispose();
// terpilihIi5_6.dispose();
// terpilihIi5_7.dispose();
// terpilihIi5_8.dispose();
// terpilihIii1_1.dispose();
// terpilihIii1_2.dispose();
// terpilihIii1_3.dispose();
// terpilihIii1_4.dispose();
// terpilihIii1_5.dispose();
// terpilihIii1_6.dispose();
// terpilihIii1_7.dispose();
// terpilihIii1_8.dispose();
// terpilihIii1_9.dispose();
// terpilihIii1_10.dispose();
// terpilihIii1_11.dispose();
// terpilihIii1_12.dispose();
// terpilihIii1_13.dispose();
// terpilihIii1_14.dispose();
// terpilihIii1_15.dispose();
// terpilihIii1_16.dispose();
// terpilihIii1_17.dispose();
// terpilihIii1_18.dispose();
// terpilihIii1_19.dispose();
// terpilihIii1_20.dispose();
// terpilihIii1_21a.dispose();
// terpilihIii1_21b.dispose();
// terpilihIii1_21c.dispose();
// terpilihIii1_22.dispose();
// terpilihIii1_23.dispose();
// terpilihIii1_24.dispose();
// terpilihIii1_25.dispose();
  }

  void increment() => count.value++;
}
