import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../controllers/calculator_controller.dart';
import '../local_widgets/button.dart';

class ComponentFive extends GetView<CalculatorController> {
  const ComponentFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button(
          text: '0',
          onPressed: () => controller.addInput = '0',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '00',
          onPressed: () => controller.addInput = '00',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '.',
          onPressed: () => controller.addInput = '.',
          color: ColorManager.ACCENT,
        ),
        Button(
          text: '=',
          onPressed: () => controller.calculate(),
          color: ColorManager.ACCENT_ALT,
          textAccentColor: false,
        ),
      ],
    );
  }
}
