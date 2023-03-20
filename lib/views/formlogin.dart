import 'package:eventing/controller/auth_controller.dart';
import 'package:eventing/views/formregister.dart';
import 'package:eventing/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class formlogin extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<formlogin> {
  final _formKey = GlobalKey<FormState>();
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
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Image.asset(
                      'images/logo.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),

                //form email
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                    },
                    controller: emailController,
                  ),
                ),

                //form password
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    // controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                    controller: passwordController,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                      ),
                    ),
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

                //login button
                Obx(() => authController.isLoading.value
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text('Login'),
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            authController.login(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim());
                          },
                        ),
                      )),
              ],
            ),
          ),
        ),
      ),
    );
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
