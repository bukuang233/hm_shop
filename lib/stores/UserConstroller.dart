import 'package:get/get.dart';
import 'package:hm_shop/viewmodels/user.dart';

class UserConstroller extends GetxController {
  var user = UserInfo.fromJSON({}).obs;
  updateUserInfo(UserInfo newUser) {
    user.value = newUser;
  }
}
