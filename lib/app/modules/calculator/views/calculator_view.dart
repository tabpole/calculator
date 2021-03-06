import 'package:flutter/material.dart';

import '../../../core/values/colors.dart';
import '../components/component_five.dart';
import '../components/component_four.dart';
import '../components/component_one.dart';
import '../components/component_three.dart';
import '../components/component_two.dart';
import '../components/input_output.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.PRIMARY,
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
