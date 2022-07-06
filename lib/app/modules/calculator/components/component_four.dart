import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../controllers/calculator_controller.dart';
import '../local_widgets/button.dart';

class ComponentFour extends GetView<CalculatorController> {
  const ComponentFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button(
          text: '1',
          onPressed: () => controller.addInput = '1',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '2',
          onPressed: () => controller.addInput = '2',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '3',
          onPressed: () => controller.addInput = '3',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '+',
          onPressed: () => controller.addInput = '+',
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
      ],
    );
  }
}
