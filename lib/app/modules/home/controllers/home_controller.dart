import 'package:get/get.dart';
import 'package:mahsiswa/app/modules/home/providers/user_provider.dart';

import '../user_model.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  late List<User> dataUser = [];

  Future<List<User>> getUser() async {
    final user = UserProvider();

    user.getUserAll().then((value) {
      final data = value as Map<String, dynamic>;
      // var dataUserS = data['data'] as List;
      User().dataToUser(data['data'],dataUser);
      count.value = data['total_user'];
    });
    return dataUser;
  }

  

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
