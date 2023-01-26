import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ship_certification/app/data/widget/model/Kontruksi.dart';

class ApiService {
  static const String _baseUrl = 'http://localhost:8080/api/';

  Future<Kontruksi> insertKontruksi(
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
    final response =
        await http.post(Uri.parse("${_baseUrl}Kontruksi/list"), body: {
      'users_id': users_id,
      'nama_kapal': nama_kapal,
      'pemilik_surat_laut': pemilik_surat_laut,
      'pelabuhan': pelabuhan,
      'daerah_pelayaran': daerah_pelayaran,
      'jenis_pemeriksaan': jenis_pemeriksaan,
      'tgl_pemeriksaan': tgl_pemeriksaan,
      'call_sign': call_sign,
      'kebangsaan_pendaftaran': kebangsaan_pendaftaran,
      'berat_kotor': berat_kotor,
      'tgl_peletakan_lunas': tgl_peletakan_lunas,
      'no_klasifikasi': no_klasifikasi,
      'nama_almat_pemilik_perusahaan': nama_almat_pemilik_perusahaan,
      'jenis_kapal': jenis_kapal,
      'tanda_tangan_inspector': tanda_tangan_inspector,
      'catatan_laporan_pemeriksaan': catatan_laporan_pemeriksaan,
      'data_khusus_informasi_tambahan': data_khusus_informasi_tambahan,
      'daftar_data_yg_tidak_sesuai': daftar_data_yg_tidak_sesuai,
      'ctt_kesimpulan': ctt_kesimpulan,
      'nip': nip,
      'id_catatan_laporan_pemeriksaan': id_catatan_laporan_pemeriksaan,
      'no': no,
      'item_pemeriksaan': item_pemeriksaan,
      'aturan_regulasi': aturan_regulasi,
      'checklist': checklist,
      'keterangan': keterangan,
    });
    print(response.body);
    if (response.statusCode == 200) {
      return Kontruksi.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load list kontruksi');
    }
  }
}
