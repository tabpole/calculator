import 'package:calculator/app/modules/calculator/components/input_output.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/values/colors.dart';
import '../components/component_five.dart';
import '../components/component_four.dart';
import '../components/component_one.dart';
import '../components/component_three.dart';
import '../components/component_two.dart';
import '../controllers/calculator_controller.dart';

class CalculatorView extends GetView<CalculatorController> {
  const CalculatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.PRIMARY,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: ColorManager.ACCENT,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 3,
            child: InputOutput(),
          ),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ComponentOne(),
                ComponentTwo(),
                ComponentThree(),
                ComponentFour(),
                ComponentFive(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
