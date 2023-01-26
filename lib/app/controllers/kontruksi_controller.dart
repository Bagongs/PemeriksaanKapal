import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ship_certification/app/modules/form_konstruksi/service/kontruksi_service.dart';
import 'package:ship_certification/app/data/widget/model/kontruksi.dart';
import 'package:ship_certification/app/routes/app_pages.dart';

class KontruksiController extends GetxController {
  final Rx<Kontruksi> data_kontruksi = Kontruksi().obs;
  @override
  void onInit() {
    super.onInit();
  }

  void insertKontruksi(
      String users_id,
      String nama_kapal,
      String pemilik_surat_laut,
      String pelabuhan,
      String daerah_pelayaran,
      String jenis_pemeriksaan,
      DateTime tgl_pemeriksaan,
      String call_sign,
      String kebangsaan_pendaftaran,
      String berat_kotor,
      String tgl_peletakan_lunas,
      String no_klasifikasi,
      String nama_almat_pemilik_perusahaan,
      String jenis_kapal,
      String tanda_tangan_inspector,
      String catatan_laporan_pemeriksaan,
      String data_khusus_informasi_tambahan,
      String daftar_data_yg_tidak_sesuai,
      String ctt_kesimpulan,
      String nip,
      String id_catatan_laporan_pemeriksaan,
      String no,
      String item_pemeriksaan,
      String aturan_regulasi,
      String checklist,
      String keterangan) async {
    var kontruksi = await ApiService().insertKontruksi(
        users_id,
        nama_kapal,
        pemilik_surat_laut,
        pelabuhan,
        daerah_pelayaran,
        jenis_pemeriksaan,
        tgl_pemeriksaan,
        call_sign,
        kebangsaan_pendaftaran,
        berat_kotor,
        tgl_peletakan_lunas,
        no_klasifikasi,
        nama_almat_pemilik_perusahaan,
        jenis_kapal,
        tanda_tangan_inspector,
        catatan_laporan_pemeriksaan,
        data_khusus_informasi_tambahan,
        daftar_data_yg_tidak_sesuai,
        ctt_kesimpulan,
        nip,
        id_catatan_laporan_pemeriksaan,
        no,
        item_pemeriksaan,
        aturan_regulasi,
        checklist,
        keterangan);
    if (kontruksi.success!) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.defaultDialog(
          title: "Verifikasi Email",
          middleText: "Kamu perlu melakukan verifikasi email terlebih dahulu.");
    }
  }
}
