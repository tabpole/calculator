import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../controllers/calculator_controller.dart';
import '../local_widgets/button.dart';

class ComponentTwo extends GetView<CalculatorController> {
  const ComponentTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button(
          text: '7',
          onPressed: () => controller.addInput = '7',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '8',
          onPressed: () => controller.addInput = '8',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '9',
          onPressed: () => controller.addInput = '9',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '*',
          onPressed: () => controller.addInput = '*',
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
      ],
    );
  }
}
