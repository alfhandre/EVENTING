import 'package:flutter/material.dart';

class detailPengumuman extends StatefulWidget {
  @override
  State<detailPengumuman> createState() => _detailPengumumanState();
}

class _detailPengumumanState extends State<detailPengumuman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //container appbar
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.blue,
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.center,
                      child: Text(
                        'Pengumuman',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 1),
              Container(
                //container buat 1 notif
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              '[bug fixing]',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'App not Opening',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lakukan update aplikasi eventing',
                        style: TextStyle(
                            color: Colors.blue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
