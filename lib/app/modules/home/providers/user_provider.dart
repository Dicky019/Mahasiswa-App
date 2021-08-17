import 'package:get/get.dart';

import '../user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
  }

  Future<dynamic> getUser(int id) async {
    final response = await get('http://192.168.43.125:3000/getUser/$id');
    return response.body;
  }

   Future<dynamic> getUserAll() async {
    final response = await get('http://192.168.43.125:3000/getUserAll');
    return response.body;
  }

  Future<Response<User>> postUser(User user) async => await post('user', user);
  Future<Response> deleteUser(int id) async => await delete('user/$id');
}
