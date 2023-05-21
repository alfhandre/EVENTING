import 'package:eventing/views/login/homescreen/homepage.dart';
import 'package:flutter/material.dart';


class mainDaftarCalender extends StatelessWidget {
  const mainDaftarCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
        children: [
          SizedBox(height: 15),
          Divider(thickness: 1),
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Text('Rab, 25 Jan 2023',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold))),
                Container(
                    padding: EdgeInsets.only(right: 20),
                    child:
                        Text('1 Acara', style: TextStyle(color: Colors.blue)))
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset('images/Line 20.png'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text('Ketemu bareng Doi',
                              style: TextStyle(color: Colors.blue))),
                      Container(
                          child: Text('08.00 - 09.00',
                              style: TextStyle(color: Colors.blue)))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Divider(thickness: 1),
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Text('Rab, 26 Jan 2023',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold))),
                Container(
                    padding: EdgeInsets.only(right: 20),
                    child:
                        Text('2 Acara', style: TextStyle(color: Colors.blue)))
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Image.asset('images/Line 20.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Text('Jalan-jalan bareng Doi',
                                  style: TextStyle(color: Colors.blue))),
                          Container(
                              child: Text('08.00 - 09.00',
                                  style: TextStyle(color: Colors.blue)))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Image.asset('images/Line 20.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Text('Makan bareng Doi',
                                  style: TextStyle(color: Colors.blue))),
                          Container(
                              child: Text('09.00 - 10.00',
                                  style: TextStyle(color: Colors.blue)))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
      ),
    );
  }
}