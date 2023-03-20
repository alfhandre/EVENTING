import 'package:eventing/controller/auth_controller.dart';
import 'package:eventing/views/formlogin.dart';
import 'package:eventing/views/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class formregister extends StatefulWidget {
  const formregister({Key? key}) : super(key: key);

  @override
  State<formregister> createState() => _formregisterState();
}

class _formregisterState extends State<formregister> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  late final AuthController authController;

  @override
  void initState() {
    super.initState();
    authController = Get.put(AuthController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        key: formKey,
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
                      Container(
                        child: TextFormField(
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
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nama harus diisi';
                            }
                            return null;
                          },
                          controller: namaController,
                        ),
                      ),

                      SizedBox(height: 10),

                      //e-mail
                      Container(
                        child: TextFormField(
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
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.blue,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email harus diisi';
                            }
                            if (!value.contains('@')) {
                              return 'Email tidak valid.';
                            }
                          },
                          controller: emailController,
                        ),
                      ),

                      SizedBox(height: 10),

                      //password
                      Container(
                        child: TextFormField(
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
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password harus diisi';
                            }
                            if (value.length < 6) {
                              return 'Password minimal 6+ karakter';
                            }
                          },
                          controller: passwordController,
                        ),
                      ),

                      SizedBox(height: 10),

                      //konfirmasi password
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
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
                            prefixIcon: Icon(
                              Icons.lock_reset_sharp,
                              color: Colors.blue,
                            ),
                          ),
                          validator: (value) {
                            if (value != passwordController.text.trim()) {
                              return 'Password harus sesuai !';
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10),

                      Obx(() => authController.isLoading.value
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Container(
                              child: Container(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: ElevatedButton(
                                    child: const Text("Register"),
                                    onPressed: () {
                                      if (!formKey.currentState!.validate()) {
                                        return;
                                      }
                                      authController.signUp(
                                          email: emailController.text.trim(),
                                          password:
                                              passwordController.text.trim());
                                    },
                                  ),
                                ),
                              ),
                            )),
                      //register button
                      SizedBox(width: 10),
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
                          ),
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
