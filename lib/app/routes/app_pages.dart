// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/calculator/bindings/calculator_binding.dart';
import '../modules/calculator/views/calculator_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CALCULATOR;

  static final routes = [
    GetPage(
      name: _Paths.CALCULATOR,
      page: () => const CalculatorView(),
      binding: CalculatorBinding(),
    ),
  ];
}
