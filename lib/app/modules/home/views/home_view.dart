import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mahsiswa/app/modules/detail/controllers/detail_controller.dart';
import 'package:mahsiswa/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Jumlah Data ${controller.count.value}')),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.count.value != 0
            ? ListView.builder(
                itemCount: controller.dataUser.length,
                itemBuilder: (context, i) {
                  final data = controller.dataUser[i];
                  return ListTile(
                    onTap: () {
                      Get.put(DetailController()).data = data;
                      Get.toNamed(Routes.DETAIL);
                    },
                    title: Text("${data.nama!}"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                    ),
                    subtitle: Text(data.nim!),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
