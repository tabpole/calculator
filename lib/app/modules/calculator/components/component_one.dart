import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../controllers/calculator_controller.dart';
import '../local_widgets/button.dart';

class ComponentOne extends GetView<CalculatorController> {
  const ComponentOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button(
          text: 'AC',
          onPressed: () => controller.allClear(),
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
        Button(
          text: 'C',
          onPressed: () => controller.removeLastInput(),
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
        Button(
          text: '%',
          onPressed: () => controller.addInput = '%',
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
        Button(
          text: '/',
          onPressed: () => controller.addInput = '/',
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
      ],
    );
  }
}
