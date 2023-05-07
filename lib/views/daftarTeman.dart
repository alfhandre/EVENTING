import 'package:eventing/widgets/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class daftarTeman extends StatelessWidget {
  // const daftarTeman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
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
                    alignment: Alignment.topLeft,
                  ),
                  Text('Daftar Teman',
                      style: TextStyle(color: Colors.blue, fontSize: 18)),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.asset('images/addfriend.png'),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text('Cari Teman',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.grey[500])),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(Icons.search, size: 30),
                      )
                    ],
                  )),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text('5 Teman',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset('images/dapa.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text('Indah Dewi Permatasari'),
                            ),
                            InkWell(
                              onTap: () {
                                // Fungsi yang akan dijalankan ketika tombol ditekan
                              },
                              child: Container(
                                width: 100,
                                alignment: Alignment.centerRight,
                                child: Image.asset('images/deletefriend.png'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
