import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:ship_certification/app/data/widget/model/Kontruksi.dart';
import 'package:ship_certification/app/data/widget/model/basic_model.dart';

class ApiService {
  String api = "";
  String endpointLogin = "/Coba/public/index.php/Api/Auth/login";
  Future<BasicModel?> insertDataPemeriksaan(
    id_pemeriksaan_hdr,
    id_kategori,
    id_kategori_pemeriksaan_hdr,
    id_kategori_pemeriksaan_dtl,
    check_list,
    aturan_regulation,
    syarat_require,
    dikapal_onboard,
    jenis_capacity,
    keterangan,
  ) async {
    try {
      Response response = await post(Uri.parse(api + endpointLogin), body: {});
      if (response.statusCode == 200) {
        debugPrint("response get users login ${response.body}");
        final result = jsonDecode(response.body);
        return BasicModel.fromJson(result);
      } else {
        debugPrint("throw error get users login ${response.reasonPhrase}");
      }
    } catch (e) {
      debugPrint("Catch Error getUsers $e");
    }
    return null;
  }
}
