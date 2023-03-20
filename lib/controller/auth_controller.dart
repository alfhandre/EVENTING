import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:eventing/views/create_profile.dart';
import 'package:eventing/views/homescreen.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  var isLoading = false.obs;

  void login(String? email, String? password) {
    isLoading(true);

    auth
        .signInWithEmailAndPassword(email: email!, password: password!)
        .then((value) {
      //login suscess
      isLoading(false);
      Get.to(() => HomeScreen());
    }).catchError((e) {
      isLoading(false);
      //error information
    });
  }

  void signUp(String? email, String? password) {
    //1 email
    //2 password

    isLoading(true);

    auth
        .createUserWithEmailAndPassword(email: email!, password: password!)
        .then((value) {
      isLoading(false);
      //navigate user to profile screen
      Get.to(() => ProfileScreen());
    }).catchError((e) {
      // print error information
      print('Error in authentication $e');
      isLoading(false);
    });
  }
}
