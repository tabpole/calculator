import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorSnackbar {
  static SnackbarController handle({String title = "Error", String message = ""}) {
    return Get.snackbar(
      title,
      message,
      colorText: Colors.white,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 4),
      backgroundColor: const Color.fromARGB(255, 36, 2, 0),
      snackPosition: SnackPosition.TOP,
    );
  }
}
