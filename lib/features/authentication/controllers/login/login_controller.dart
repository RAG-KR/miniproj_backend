import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';

import '../../../../navigation_menu.dart';

class LoginController extends GetxController {
  final rememberMe= false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage ();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormkey = GlobalKey<FormState> ();

  Future<void> emailAndPasswordSignIn() async{
    try{
      if(!loginFormkey.currentState!.validate()){
        return;
      }

      if(rememberMe.value){
        localStorage.write('REMEMBER_ME_EMAIL',email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      Get.offAll(() => const NavigationMenu());
      // AuthenticationRepository.instance.screenRedirect();
    }catch(e){
      Get.snackbar('Error', 'Invalid credentials');
    }
  }
}