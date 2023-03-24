import 'dart:io';
import 'package:eventing/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import 'package:eventing/widgets/my_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(1950),
      lastDate: DateTime(2101),
    );
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController dob = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  imagePickDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Choose Image Source'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () async {
                  final ImagePicker _picker = ImagePicker();
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    profileImage = File(image.path);
                    setState(() {
                      profileImage = File(image.path);
                    });
                    Navigator.pop(context);
                  }
                },
                child: Icon(
                  Icons.camera_alt,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                  onTap: () async {
                    final ImagePicker _picker = ImagePicker();
                    final XFile? image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      profileImage = File(image.path);
                      setState() {}
                      ;
                      Navigator.pop(context);
                    }
                  },
                  child: Icon(
                    Icons.photo,
                    color: Colors.blue,
                    size: 30,
                  )),
            ],
          ),
        );
      },
    );
  }

  File? profileImage;

  void setSelectedRadio(int val) {
    setState() {
      selectedRadio = val;
    }
  }

  int selectedRadio = 0;

  AuthController? authController;

  @override
  void initState() {
    super.initState();
    authController = Get.find<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.blue,
                          alignment: Alignment.topLeft),
                      Text(
                        'Profile',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.check),
                          color: Colors.blue,
                          alignment: Alignment.topRight),
                    ]),
                SizedBox(
                  height: Get.width * 0.1,
                ),
                InkWell(
                  onTap: () {
                    imagePickDialog();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 120,
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(70),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff7DDCFB),
                          Color(0xffBC67F2),
                          Color(0xffACF6AF),
                          Color(0xffF95549),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(70),
                          ),
                          child: profileImage == null
                              ? CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.camera_alt,
                                      size: 50, color: Colors.blue),
                                )
                              : CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Colors.white,
                                  backgroundImage: FileImage(
                                    profileImage!,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.1),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nama',
                      filled: true,
                      fillColor: Colors.grey[200]),
                  validator: (test) {
                    return;
                  },
                ),
                SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-Mail',
                      filled: true,
                      fillColor: Colors.grey[200]),
                ),
                SizedBox(height: 50),

                //
                //

                Container(
                  alignment: Alignment.centerLeft,
                  // padding: EdgeInsets.only(right: 260),
                  child: Text('Informasi lainnnya'),
                ),
                SizedBox(height: 10),
                //
                Container(
                  height: 50,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                      // aksi saat tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.grey[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // teks diatur agar ada di sisi kiri dan ikon di sisi kanan tombol
                      children: [
                        Text('Jenis Kelamin',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text(
                              'Tidak ada yang dipilih',
                              style: TextStyle(color: Colors.blue),
                              textAlign: TextAlign.end,
                            ),
                            Icon(Icons.arrow_right_rounded,
                                color: Colors.blue, size: 16.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                      // aksi saat tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.grey[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // teks diatur agar ada di sisi kiri dan ikon di sisi kanan tombol
                      children: [
                        Text('Status',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text(
                              'Menikah/Belum menikah',
                              style: TextStyle(color: Colors.blue),
                              textAlign: TextAlign.end,
                            ),
                            Icon(Icons.arrow_right_rounded,
                                color: Colors.blue, size: 16.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                      // aksi saat tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.grey[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // teks diatur agar ada di sisi kiri dan ikon di sisi kanan tombol
                      children: [
                        Text('Tujuan Pemakaian',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text(
                              'Tidak ada yang dipilih',
                              style: TextStyle(color: Colors.blue),
                              textAlign: TextAlign.end,
                            ),
                            Icon(Icons.arrow_right_rounded,
                                color: Colors.blue, size: 16.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






        // backgroundColor: Colors.white,
        // elevation: 0,
        // centerTitle: true,
        // title: Text(
        //   'Profil',
        //   style: TextStyle(color: Colors.blue),
        // ),
        // leading: IconButton(
        //   icon: Icon(Icons.menu, color: Colors.blue),
        //   onPressed: () {
        //     // Tindakan ketika tombol kiri ditekan
        //   },
        // ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.check, color: Colors.blue),
        //     onPressed: () {
        //       // Tindakan ketika tombol kanan ditekan
        //     },
        //   ),
        // ],
      // body: Container(
      //   child: ListView(
      //     children: [
      //       Padding(padding: EdgeInsets.only(top: 20)),
      //       Center(
      //         child: CircleAvatar(
      //           backgroundImage: AssetImage('images/dapa.jpg'),
      //           radius: 75,
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       Center(
      //         child: Text(
      //           'id : arimaulanahardan',
      //           style:
      //               TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
      //         ),
      //       ),
      //       SizedBox(height: 40),
      //       Container(
      //         child: Padding(
      //           padding: const EdgeInsets.fromLTRB(17.0, 0, 17.0, 0),
      //           child: TextFormField(
      //             keyboardType: TextInputType.emailAddress,
      //             decoration: InputDecoration(
      //               fillColor: Colors.grey[300],
      //               filled: true,
      //               focusColor: Colors.grey[300],
      //               disabledBorder: InputBorder.none,
      //               border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(5.0)),
      //               labelText: 'Nama',
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 40),
      //       Container(
      //         child: Padding(
      //           padding: const EdgeInsets.fromLTRB(17.0, 0, 17.0, 0),
      //           child: TextFormField(
      //             keyboardType: TextInputType.emailAddress,
      //             decoration: InputDecoration(
      //               fillColor: Colors.grey[300],
      //               filled: true,
      //               focusColor: Colors.grey[300],
      //               disabledBorder: InputBorder.none,
      //               border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(5.0)),
      //               labelText: 'E-Mail',
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),