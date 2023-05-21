import 'package:flutter/material.dart';

class pengaturan extends StatefulWidget {
  @override
  State<pengaturan> createState() => _pengaturanState();
}

class _pengaturanState extends State<pengaturan> {
  // bool light = true;
  bool notificationOn = true;
  bool privateCalendarOn = true;
  // const 'pengaturan'({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                Text('Pengaturan',
                    style: TextStyle(color: Colors.blue, fontSize: 18)),
                IconButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return ();
                    // }));
                  },
                  icon: Icon(Icons.check),
                  color: Colors.blue,
                  alignment: Alignment.topRight,
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Nyalakan Notifikasi',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    child: Switch(
                      // This bool value toggles the switch.
                      value: notificationOn,
                      activeColor: Colors.blue,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          notificationOn = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Kalender Privati',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    child: Switch(
                      // This bool value toggles the switch.
                      value: privateCalendarOn,
                      activeColor: Colors.blue,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          privateCalendarOn = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
