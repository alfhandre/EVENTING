import 'package:eventing/views/createevent.dart';
import 'package:eventing/views/homepage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('test')),
        body: Center(child: Text('anjing')),
        drawer: Drawer(
          child: Container(
            child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return MainMenu();
                      }));
                    },
                    child: Container(
                        color: Colors.blue,
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

                //button button
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
              ],
            ),
          ),
        ));
  }
}

// drawer: Drawer(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 140,
//               child: ElevatedButton(
//                 style: ButtonStyle(),
//                 child: Text(
//                   'Profile',
//                   textAlign: TextAlign.center,
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) {
//                         return ProfileScreen();
//                       },
//                     ),
//                   );
//                 },
//               ),
//               color: Colors.red,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ListTile(
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return HomeScreen();
//                     },
//                   ),
//                 );
//               },
//               leading: Icon(Icons.home),
//               title: Text(
//                 'Home',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: (() {
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(
//                 //     builder: (context) {
//                 //       return SettingPage();
//                 //     },
//                 //   ),
//                 // );
//               }),
//               leading: Icon(Icons.settings),
//               title: Text(
//                 'Settings',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: (() {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return formlogin();
//                     },
//                   ),
//                 );
//               }),
//               leading: Icon(Icons.account_circle_rounded),
//               title: Text(
//                 'Logout',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )