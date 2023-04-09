// import 'package:eventing/views/create_event.dart';
import 'package:eventing/views/createevent.dart';
import 'package:eventing/views/homescreen.dart';
import 'package:eventing/views/mainCalendar.dart';
import 'package:eventing/views/create_profile.dart';
import 'package:eventing/views/formlogin.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  // DateTime today = DateTime.now();
  // void _onDaySelected(DateTime day, DateTime focusedDay) {
  //   setState(() {
  //     today = day;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Eventing'),
      ),
      body: SafeArea(child: mainCalendar()),
      drawer: Drawer(
          child: SafeArea(
        top: true,
        child: Container(
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ProfileScreen();
                    }));
                  },
                  child: Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: 82,
                      child: Row(children: [
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: ClipOval(
                                      child: Image.asset('images/dapa.jpg'))),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.48,
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 41,
                                alignment: Alignment.bottomLeft,
                                child: Text('Ari Mualana Hardan',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ),
                              Container(
                                height: 41,
                                alignment: Alignment.topLeft,
                                child: Text('Tampilkan profil',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[400],
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              icon: Icon(Icons.settings),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: ((context) {
                                  return Createevent();
                                })));
                              }),
                        )
                      ]))),

              //Kolom Daftar Teman, Daftar Kalender Group, Pengumuman
              Container(
                color: Colors.grey[200],
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.black12,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //kolom button daftar teman
                          Container(
                              child: CircleAvatar(
                                  backgroundColor: Colors.blue[100],
                                  radius: 22,
                                  child: SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: IconButton(
                                        icon: Icon(Icons.people_outline),
                                        iconSize: 28,
                                        onPressed: () {},
                                      )))),
                          SizedBox(height: 8),
                          Container(
                              child: Text('Daftar Teman',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 8,
                                      color: Colors.blue))),
                        ],
                      ),

                      VerticalDivider(thickness: 1, color: Colors.black12),

                      //kolom button daftar kalender
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: CircleAvatar(
                                  backgroundColor: Colors.blue[100],
                                  radius: 22,
                                  child: SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: IconButton(
                                        icon: Icon(Icons.people_alt),
                                        iconSize: 28,
                                        onPressed: () {},
                                      )))),
                          SizedBox(height: 8),
                          Container(
                              child: Text('Daftar Group',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 8,
                                      color: Colors.blue))),
                        ],
                      ),

                      VerticalDivider(thickness: 1, color: Colors.black12),

                      //kolom button pengumuman
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: CircleAvatar(
                                  backgroundColor: Colors.blue[100],
                                  radius: 22,
                                  child: SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: IconButton(
                                        icon: Icon(Icons.volume_up_outlined),
                                        iconSize: 28,
                                        onPressed: () {},
                                      )))),
                          SizedBox(height: 8),
                          Container(
                              child: Text('Pengumuman',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 8,
                                      color: Colors.blue))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 3),

              //kolom undangan bertemean / invite group
              Container(
                color: Colors.grey[100],
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Faikar",
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: Text(
                        "Ingin menambahkan anda sebagai teman",
                        style: TextStyle(
                            fontSize: 9,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[800]),
                      ),
                      leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child: ClipOval(
                                child: Image.asset("images/fai.jpg"),
                              ))),
                    )
                  ],
                ),
              ),
              SizedBox(height: 3),
              Container(
                color: Colors.grey[100],
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Daffa",
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: Text(
                        "Ingin menambahkan anda sebagai teman",
                        style: TextStyle(
                            fontSize: 9,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[800]),
                      ),
                      leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child: ClipOval(
                                child: Image.asset("images/dapa.jpg"),
                              ))),
                    )
                  ],
                ),
              ),
              SizedBox(height: 3),
              Container(
                color: Colors.grey[100],
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Gepi",
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: Text(
                        "Ingin menambahkan anda sebagai teman",
                        style: TextStyle(
                            fontSize: 9,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[800]),
                      ),
                      leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child: ClipOval(
                                child: Image.asset("images/gepi.jpg"),
                              ))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            label: 'Agenda',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Createevent();
          }));
        },
      ),
    );
  }
  // Widget content() {
  //   return Padding(
  //     padding: const EdgeInsets.all(20.0),
  //     child: Column(
  //       children: [
  //         Text(
  //           'Selected Day : ' + today.toString().split(" ")[0],
  //           style: TextStyle(fontSize: 20),
  //         ),
  //         Container(
  //           child: TableCalendar(
  //             locale: "en_US",
  //             rowHeight: 43,
  //             headerStyle:
  //                 HeaderStyle(formatButtonVisible: false, titleCentered: true),
  //             availableGestures: AvailableGestures.all,
  //             selectedDayPredicate: (day) => isSameDay(day, today),
  //             focusedDay: today,
  //             firstDay: DateTime.utc(2010, 10, 16),
  //             lastDay: DateTime.utc(2030, 3, 14),
  //             onDaySelected: _onDaySelected,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////