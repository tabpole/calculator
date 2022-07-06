import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../controllers/calculator_controller.dart';
import '../local_widgets/button.dart';

class ComponentThree extends GetView<CalculatorController> {
  const ComponentThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button(
          text: '4',
          onPressed: () => controller.addInput = '4',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '5',
          onPressed: () => controller.addInput = '5',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '6',
          onPressed: () => controller.addInput = '6',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '-',
          onPressed: () => controller.addInput = '-',
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
      ],
    );
  }
}
