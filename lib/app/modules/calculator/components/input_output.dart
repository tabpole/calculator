import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../controllers/calculator_controller.dart';

class InputOutput extends GetView<CalculatorController> {
  const InputOutput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Obx(
            () => Text(
              '${controller.input}',
              style: const TextStyle(
                fontSize: 32,
                color: TextColorManager.PRIMARY,
              ),
            ),
          ),
          Obx(
            () => Text(
              '${controller.output}',
              style: const TextStyle(
                fontSize: 32,
                color: TextColorManager.ACCENT,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
