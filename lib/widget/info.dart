import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Info {
  static void snacktor(String message) {
    Get.rawSnackbar(
      messageText: Text(
        message,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      duration: Duration(milliseconds: 1700),
    );
  }
}
