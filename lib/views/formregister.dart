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
      body: Container(
        child: Form(
            key: formKey,
            // child: ListView(
            // children: <Widget>[
            // child: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/Rectangle 32.png',
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 40),
                        child: Container(
                          child: Image.asset(
                              'images/Illustration - Scene Wireframe.png',
                              width: 204,
                              height: 186),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Text('Register User !!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w800)),
                      ),
                    ),
                  ],
                ),
                Column(children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'images/Rectangle 1.png',
                          width: MediaQuery.of(context).size.width,
                          height: 484,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Nama Lengkap',
                              contentPadding:
                                  EdgeInsets.only(left: 20, bottom: 20),
                              labelStyle: TextStyle(
                                color: Colors.blue, // warna label biru
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
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
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          margin: EdgeInsets.only(top: 100),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Alamat e-mail',
                              contentPadding:
                                  EdgeInsets.only(left: 20, bottom: 20),
                              labelStyle: TextStyle(
                                color: Colors.blue,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
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
                      ),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              margin: EdgeInsets.only(top: 180),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  contentPadding:
                                      EdgeInsets.only(left: 20, bottom: 20),
                                  labelStyle: TextStyle(
                                    color: Colors.blue,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                    ),
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
                              ))),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        margin: EdgeInsets.only(top: 260),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          controller: confirmPasswordController,
                          decoration: const InputDecoration(
                            labelText: 'Konfirmasi Password',
                            contentPadding:
                                EdgeInsets.only(left: 20, bottom: 20),
                            labelStyle: TextStyle(
                              color: Colors.blue,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.blue,
                            )),
                          ),
                          validator: (value) {
                            if (value != passwordController.text.trim()) {
                              return 'Password harus sesuai !';
                            }
                          },
                        ),
                      )),
                      SizedBox(height: 10),

                      Positioned(
                        bottom: 100,
                        left: 0,
                        right: 30,
                        child: Obx(() => authController.isLoading.value
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
                      ),
                      //register button
                      SizedBox(width: 10),

                      Positioned(
                        bottom: 50,
                        left: 20,
                        right: 0,
                        child: Row(
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
                      ),
                    ],
                  ),
                ]),
              ],
            )),
        // ],
        // ),
        // ),
      ),
    );
  }
}
