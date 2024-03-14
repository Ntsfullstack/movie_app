import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'seting_controller.dart';

class Setting_Screen extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Test",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
