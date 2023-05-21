import 'dart:io';
import 'package:eventing/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController userIDController = TextEditingController();
  TextEditingController displayNameController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  //   Future _pickImage(ImageSource source) async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: source);
  //     if (image == null) return;
  //     File? img = File(image.path);
  //     img = await _cropImage(imageFile: img);
  //     setState(() {
  //       _image = img;
  //       Navigator.of(context).pop();
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     Navigator.of(context).pop();
  //   }
  // }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              // child: SelectPhotoOptionsScreen(

              // ),
            );
          }),
    );
  }

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
    authController = Get.put(AuthController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: formKey,
              child: Column(
                children: [
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
                        Obx(
                          () =>
                              authController!.isProfileInformationLoading.value
                                  ? Container(
                                      child: CircularProgressIndicator(),
                                    )
                                  : IconButton(
                                      icon: Icon(Icons.check),
                                      color: Colors.blue,
                                      alignment: Alignment.topRight,
                                      onPressed: () async {
                                        if (!formKey.currentState!.validate()) {
                                          return null;
                                        }

                                        if (profileImage == null) {
                                          Get.snackbar(
                                              'Warning', "Image is required.",
                                              colorText: Colors.white,
                                              backgroundColor: Colors.blue);
                                          return null;
                                        }
                                        authController!
                                            .isProfileInformationLoading(true);

                                        String imageUrl = await authController!
                                            .uploadImageToFirebaseStorage(
                                                profileImage!);

                                        authController!.uploadProfileData(
                                            imageUrl,
                                            userIDController.text.trim(),
                                            displayNameController.text.trim());
                                      }),
                        )
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
                  Container(
                    alignment: Alignment.centerLeft,
                    // padding: EdgeInsets.only(right: 260),
                    child: Text(
                      'User ID',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[200]),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'User ID tidak boleh kosong';
                      }
                    },
                    controller: userIDController,
                  ),
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Display Name',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[200]),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                    },
                    controller: displayNameController,
                  ),
                  SizedBox(height: 30),
                ],
              ),
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