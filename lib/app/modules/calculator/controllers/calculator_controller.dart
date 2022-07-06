import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

import '../../../global_widgets/error_snackbar.dart';

class CalculatorController extends GetxController {
  // input
  final _input = ''.obs;
  get input => _input.value;
  set addInput(String value) => _input.value = _input.value + value;
  void clearInput() => _input.value = '';
  void removeLastInput() => _input.value = input.substring(0, input.length - 1);

  // output
  final _output = ''.obs;
  get output => _output.value;
  set setOutput(String value) => _output.value = value;
  void clearOutput() => _output.value = '';

  // clear
  void allClear() {
    clearInput();
    clearOutput();
  }

  // calculate
  void calculate() {
    try {
      Expression expression = Parser().parse(input);
      double result = expression.evaluate(EvaluationType.REAL, ContextModel());
      setOutput = result.toStringAsFixed(2);
    } catch (e) {
      clearOutput();
      ErrorSnackbar.handle(message: 'Please enter a valid expression');
    }
  }
}
