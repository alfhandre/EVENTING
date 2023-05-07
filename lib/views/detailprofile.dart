import 'package:flutter/material.dart';
// import 'package:eventing/controller/auth_controller.dart';
// import 'package:eventing/views/formlogin.dart';
// import 'package:eventing/views/homescreen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class detailprofile extends StatefulWidget {
  const detailprofile({Key? key}) : super(key: key);

  @override
  State<detailprofile> createState() => _detailprofileState();
}

class _detailprofileState extends State<detailprofile> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(child: Image.asset('images/Rectangle 31.png')),
                Container(
                    child: Image.asset('images/Illustration - Scene Home.png')),
                Container(
                  padding: EdgeInsets.only(top: 200),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    child: SizedBox(
                      width: 400,
                      height: 400,
                      child: ClipOval(
                        child: Image.asset('images/Logo.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      // margin: EdgeInsets.only(top: 100),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          labelText: 'User ID',
                          contentPadding: EdgeInsets.only(left: 20),
                          labelStyle: TextStyle(color: Colors.blue),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                        },
                        // controller: emailController,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      margin: EdgeInsets.only(top: 50),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          labelText: 'Display Name',
                          contentPadding: EdgeInsets.only(left: 20),
                          labelStyle: TextStyle(color: Colors.blue),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                        },
                        // controller: emailController,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 10),
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(104, 38))),
                        child: const Text('Next'),
                        onPressed: () {},
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
