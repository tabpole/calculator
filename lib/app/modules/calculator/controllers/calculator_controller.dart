import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

import '../../../global_widgets/error_snackbar.dart';

class CalculatorController extends GetxController {
  final _input = ''.obs;
  get input => _input.value;
  set addInput(String value) => _input.value = _input.value + value;
  void clearInput() => _input.value = input.substring(0, input.length - 1);

  final _output = ''.obs;
  get output => _output.value;
  set setOutput(String value) => _output.value = value;
  void clearOutput() => _output.value = '';

  void allClear() {
    _input.value = '';
    clearOutput();
  }

  void calculate() {
    try {
      ContextModel cm = ContextModel();
      Parser p = Parser();
      Expression exp = p.parse(_input.value);
      double result = exp.evaluate(EvaluationType.REAL, cm);
      _output.value = result.toStringAsFixed(2);
    } catch (e) {
      _output.value = '';
      ErrorSnackbar.handle(message: 'Please enter a valid expression');
    }
  }
}
