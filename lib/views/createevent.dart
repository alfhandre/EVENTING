import 'package:eventing/views/homepage.dart';
import 'package:eventing/views/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:intl/intl.dart';

class Createevent extends StatefulWidget {
  const Createevent({super.key});

  @override
  State<Createevent> createState() => _CreateeventState();
}

class _CreateeventState extends State<Createevent> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool light = true;
  DateTime selectDateAwal = DateTime.now();
  DateTime selectDateAkhir = DateTime.now();
  TimeOfDay selectTimeAwal = TimeOfDay.now();
  TimeOfDay selectTimeAkhir = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(children: [
              SizedBox(height: 40),
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
                  Text('Buat Kalender',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return MainMenu();
                      }));
                    },
                    icon: Icon(Icons.check),
                    color: Colors.blue,
                    alignment: Alignment.topRight,
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),

              //form pertama
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          border: OutlineInputBorder(),
                          labelText: 'Judul',
                          labelStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          contentPadding: EdgeInsets.only(left: 20),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.blue),
                    Container(
                      height: 54.8,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          border: OutlineInputBorder(),
                          labelText: 'Details',
                          labelStyle: TextStyle(fontSize: 12),
                          // Menambahkan padding pada content
                          contentPadding: EdgeInsets.only(
                            left: 20,
                            top: 100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Kolom Waktu
              SizedBox(height: 10),
              //container (1) pemebungkus
              Container(
                padding: EdgeInsets.only(left: 7),
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.17,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),

                //row (2) untuk masing masing barisnya
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    //container (3) untuk perbarisnya
                    Container(
                      child: Row(children: [
                        Container(
                            child: Row(children: [
                          Icon(
                            Icons.date_range_outlined,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 10),
                          Text('Waktu',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold))
                        ]))
                      ]),
                    ),

                    //container (3) untuk perbarisnya
                    Container(
                      padding: EdgeInsets.only(left: 24),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                            width: 130,
                            child: TextButton(
                                onPressed: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: selectDateAwal,
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2025))
                                      .then((value) {
                                    if (value != null)
                                      setState(() {
                                        selectDateAwal = value;
                                      });
                                  });
                                },
                                child: Text(DateFormat.yMMMEd()
                                    .format(selectDateAwal))),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3, right: 4),
                            child: Title(
                                color: Colors.blue,
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                )),
                          ),
                          Container(
                            width: 70,
                            child: TextButton(
                                onPressed: () {
                                  showTimePicker(
                                    context: context,
                                    initialTime: selectTimeAwal,
                                  ).then((value) {
                                    if (value != null)
                                      setState(() {
                                        selectTimeAwal = value;
                                      });
                                  });
                                },
                                child: Text(selectTimeAwal.format(context))),
                          ),
                        ],
                      ),
                    ),

                    //container (3) untuk perbarisnya
                    Container(
                      // margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.only(left: 24),
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(
                            width: 130,
                            child: TextButton(
                                onPressed: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: selectDateAkhir,
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2025))
                                      .then((value) {
                                    if (value != null)
                                      setState(() {
                                        selectDateAkhir = value;
                                      });
                                  });
                                },
                                child: Text(DateFormat.yMMMEd()
                                    .format(selectDateAkhir))),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 3, right: 4),
                            child: Title(
                                color: Colors.blue,
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                )),
                          ),
                          Container(
                            width: 70,
                            child: TextButton(
                                onPressed: () {
                                  showTimePicker(
                                    context: context,
                                    initialTime: selectTimeAkhir,
                                  ).then((value) {
                                    if (value != null)
                                      setState(() {
                                        selectTimeAkhir = value;
                                      });
                                  });
                                },
                                child: Text(selectTimeAkhir.format(context))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Kolom Ulangi Setiap Bulan ?
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.repeat,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text('Ulangi Setiap Bulan ?',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Switch(
                          // This bool value toggles the switch.
                          value: light,
                          activeColor: Colors.blue,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              light = value;
                            });
                          },
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 7),
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child:
                            Icon(Icons.ios_share_rounded, color: Colors.blue)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Bagikan Kepada',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Tidak Ada',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                                color: Color.fromRGBO(173, 173, 173, 1)),
                          )),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.blue),
                          onPressed: () {
                            // showModalBottomSheet(
                            //   context: context,
                            //   builder: (context) => Center(
                            //       child: ElevatedButton(
                            //           child: Text('back'), onPressed: () {})),
                            // );
                          },
                        ))
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
