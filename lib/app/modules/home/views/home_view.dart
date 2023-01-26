import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ship_certification/app/routes/app_pages.dart';
import 'package:ship_certification/app/utils/theme.dart';
import 'package:ship_certification/app/widgets/report_history_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final String _user = "Osama";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: edge24, vertical: 55),
        child: Column(
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Selamat datang, ',
                  style: header1,
                  children: [
                    TextSpan(
                        text: '$_user',
                        style: header1.copyWith(color: primaryColor))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Riwayat Laporan',
                style: title3,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (() {
                    //ambil dari api
                    var id_kategori = 1;
                    if (id_kategori == 1) {
                      Get.toNamed(Routes.FORM_PERLENGKAPAN);
                    } else {
                      Get.toNamed(Routes.FORM_KONSTRUKSI_2);
                    }
                  }),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ferry",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Pemeriksaan Pembaharuan",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
