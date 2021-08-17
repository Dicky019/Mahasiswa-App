import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text(
              controller.data.nama!,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              controller.data.nim!,
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () {
                controller.updateUser();
              },
              child: Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
