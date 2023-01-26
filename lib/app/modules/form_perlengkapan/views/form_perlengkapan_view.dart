import 'dart:typed_data';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ship_certification/app/data/widget/views/widget_date_view.dart';
import 'package:ship_certification/app/modules/form_konstruksi/service/kontruksi_service.dart';
import 'package:ship_certification/app/utils/theme.dart';
import '../../../data/widget/views/widget_form_field_view.dart';
import '../../../data/widget/views/widget_pemeriksaan_view.dart';
import '../../../data/widget/views/widget_perlengkapan_view.dart';
import '../../../routes/app_pages.dart';
import '../controllers/form_perlengkapan_controller.dart';
import 'package:signature/signature.dart';

class FormPerlengkapanView extends GetView<FormPerlengkapanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormPerlengkapanView'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          children: [
            //dd
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownSearch<Map<String, dynamic>>(
                    mode: Mode.MENU,
                    items: controller.dataList,
                    onChanged: (value) {
                      controller.valueDataList.value =
                          value?["id_kategori_pemeriksaan"];
                    },
                    showClearButton: true,
                    showSearchBox: true,
                    popupItemBuilder: (context, item, isSelected) => ListTile(
                      textColor: Colors.red,
                      title: Text(item["nama_kategori_pemeriksaan"].toString()),
                    ),
                    dropdownBuilder: (context, selectedItem) => Text(
                        selectedItem?["nama_kategori_pemeriksaan"].toString() ??
                            "Belum pilih pemeriksaan"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: DropdownSearch<Map<String, dynamic>>(
                      mode: Mode.MENU,
                      items: controller.dataSubList
                          .where((element) =>
                              element['id_kategori_pemeriksaan'] ==
                              controller.valueDataList.value)
                          .toList(),
                      onChanged: (value) {
                        controller.valueDataSubList.value =
                            value!["id_kategori_pemeriksaan_hdr"];
                      },
                      showClearButton: true,
                      showSearchBox: true,
                      popupItemBuilder: (context, item, isSelected) => ListTile(
                        textColor: Colors.red,
                        title: Text(item["nama_pemeriksaan_hdr"].toString()),
                      ),
                      dropdownBuilder: (context, selectedItem) => Text(
                          selectedItem?["nama_pemeriksaan_hdr"].toString() ??
                              "Belum pilih pemeriksaan hdr"),
                    ),
                  ),
                ],
              ),
            ),

            //end dd
            //Text
            SizedBox(
              height: 20,
            ),
            Obx(
              () => WidgetPerlengkapanView(
                terpilih: controller.terpilih1,
                Title: controller.dataSubList
                    .where((p0) =>
                        p0['id_kategori_pemeriksaan_hdr'] ==
                        controller.valueDataSubList.value)
                    .toList()
                    .first['nama_pemeriksaan_hdr'],
                controllerSyarat: controller.controllerSekociPenolong1,
                controllerDikapal: controller.controllerSekociPenolong2,
                controllerJenis: controller.controllerSekociPenolong3,
                controllerKeterangan: controller.controllerSekociPenolong4,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  DateTime now = DateTime.now();
                  ApiService().insertKontruksi(
                      "77",
                      "Ferry",
                      "pemilik_surat_laut",
                      'Tanjung Emas',
                      "Lokal",
                      "Pemeriksaan Pembaharuan",
                      now,
                      'call_sign',
                      'kebangsaan_pendaftaran',
                      'berat_kotor',
                      'tgl_peletakan_lunas',
                      'no_klasifikasi',
                      'kapal',
                      'ferry',
                      'tanda_tangan_inspector',
                      'catatan_laporan_pemeriksaan',
                      'data_khusus_informasi_tambahan',
                      'daftar_data_yg_tidak_sesuai',
                      'ctt_kesimpulan',
                      'nip',
                      'id_catatan_laporan_pemeriksaan',
                      'no',
                      'item_pemeriksaan',
                      'aturan_regulasi',
                      'checklist',
                      'keterangan');
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
