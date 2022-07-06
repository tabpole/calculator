import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/calculator_controller.dart';

class CalculatorView extends GetView<CalculatorController> {
  const CalculatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Calculator',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
