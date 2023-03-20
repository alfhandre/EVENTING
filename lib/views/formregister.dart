import 'package:eventing/controller/auth_controller.dart';
import 'package:eventing/views/formlogin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class formregister extends StatefulWidget {
  const formregister({super.key});

  @override
  State<formregister> createState() => _formregisterState();
}

class _formregisterState extends State<formregister> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  late AuthController authController;

  @override
  void iniState() {
    super.initState();
    authController = Get.put(AuthController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 460,
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      //nama lengkap
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Nama Lengkap',
                          labelStyle: TextStyle(
                            color: Colors.blue, // warna label biru
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: -10,
                          ),
                        ),
                      ),

                      //e-mail
                      SizedBox(height: 25),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Alamat e-mail',
                          labelStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: -10,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      //password
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.blue,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: -10,
                            )),
                      ),
                      SizedBox(height: 25),
                      //konfirmasi password
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (input) {
                          if (input != passwordController.text.trim()) {
                            Get.snackbar('Warning', 'Password harus sesuai !');
                            return;
                          }
                        },
                        controller: confirmPasswordController,
                        decoration: const InputDecoration(
                          labelText: 'Konfirmasi Password',
                          labelStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: -10,
                          ),
                        ),
                      ),
                      SizedBox(height: 35),

                      //register button
                      Obx(() => authController.isLoading.value?Container(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            child: const Text("Register"),
                            onPressed: () {
                            },
                            
                          ),
                        ),
                      ),
                      ),

                      Row(
                        children: [
                          Text("Sudah memiliki akun?"),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
