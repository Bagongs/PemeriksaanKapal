import 'package:get/get.dart';

import '../modules/create_report_page/bindings/create_report_page_binding.dart';
import '../modules/create_report_page/views/create_report_page_view.dart';
import '../modules/form_konstruksi/bindings/form_konstruksi_binding.dart';
import '../modules/form_konstruksi/views/form_konstruksi_view.dart';
import '../modules/form_perlengkapan/bindings/form_perlengkapan_binding.dart';
import '../modules/form_perlengkapan/views/form_perlengkapan_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/list_form_certificate_page/bindings/list_form_certificate_page_binding.dart';
import '../modules/list_form_certificate_page/views/list_form_certificate_page_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FORM_KONTRUKSI;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_REPORT_PAGE,
      page: () => CreateReportPageView(),
      binding: CreateReportPageBinding(),
    ),
    GetPage(
      name: _Paths.FORM_KONTRUKSI,
      page: () => FormKonstruksiView(),
      binding: FormKonstruksiBinding(),
    ),
    GetPage(
      name: _Paths.LIST_FORM_CERTIFICATE_PAGE,
      page: () => ListFormCertificatePageView(),
      binding: ListFormCertificatePageBinding(),
    ),
    GetPage(
      name: _Paths.FORM_PERLENGKAPAN,
      page: () => FormPerlengkapanView(),
      binding: FormPerlengkapanBinding(),
    ),
  ];
}

class FormKontruksi2Binding {}
