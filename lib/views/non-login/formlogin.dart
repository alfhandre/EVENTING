import 'package:eventing/controller/auth_controller.dart';
import 'package:eventing/views/non-login/formregister.dart';
import 'package:eventing/views/login/homescreen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class formlogin extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<formlogin> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  late AuthController authController;

  @override
  void initState() {
    super.initState();
    authController = Get.put(AuthController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/Rectangle 32.png',
                        width: MediaQuery.of(context).size.width,
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/Scene Plants2.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ],
                ),
              ),

              //form email
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    labelText: 'Alamat e-mail',
                    labelStyle: TextStyle(color: Colors.blue),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                  },
                  controller: emailController,
                ),
              ),

              SizedBox(height: 20),

              //form password
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextFormField(
                  // controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.blue)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                  controller: passwordController,
                ),
              ),

              SizedBox(height: 20),
              //login button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // TextButton(
                      //   onPressed: () {
                      //     //forgot password screen
                      //   },
                      //   child: const Text(
                      //     'Forgot Password',
                      //   ),
                      // ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return formregister();
                          }));
                        },
                        child: const Text(
                          'Register',
                        ),
                      ),
                    ],
                  ),
                  Obx(
                    () => authController.isLoading.value
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(
                            // height: 50,
                            // width: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  minimumSize:
                                      MaterialStateProperty.all(Size(104, 38))),
                              child: const Text('Masuk'),
                              onPressed: () {
                                if (!_formKey.currentState!.validate()) {
                                  return;
                                }
                                authController.login(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim());
                              },
                            ),
                          ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Container(
                child: Text(
                  'Or Login with',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      authController.signInWithGoogle();
                    },
                    icon: Image.asset('images/google.png'),
                    iconSize: 70,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _login() async {
    final url = Uri.parse('http://192.168.1.8:3000/signin');
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({
      'email': _emailController.text,
      'password': _passwordController.text,
    });

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: body,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Login berhasil!');
        //Login berhasil, lanjutkan ke halaman berikutnya
        // Navigator.of(context);
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Gagal'),
            content: Text(
                'Email/Password salah atau terjadi kesalahan, Status : ${response.statusCode}'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text('OK'))
            ],
          ),
        );
      }
    } catch (e) {
      //Tampilkan pesan kesalahan jika login gagal
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Gagal'),
          content: Text('Email/Password salah atau terjadi kesalahan'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context), child: Text('OK'))
          ],
        ),
      );
      throw Exception('Error : $e, Gagal melakukan registrasi');
    }
  }
  // Future<void> _login() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // lakukan proses login, contoh:
  //   if (_email == 'andre' && _password == '123') {
  //     prefs.setString('email', _email);
  // Navigator.pushReplacement(
  //   context,
  //   MaterialPageRoute(builder: (context) => MainMenu()),
  // );
  //   } else {
  //     // login gagal, tampilkan pesan error
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text('Email atau password salah'),
  //     ));
  //   }
  // }
}
