import 'package:eventing/views/non-login/formlogin.dart';
import 'package:eventing/views/non-login/formregister.dart';
import 'package:flutter/material.dart';

class WelcomeEventing extends StatelessWidget {
  const WelcomeEventing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset('images/Rectangle 31.png'),
                ),
                Container(
                  child: Image.asset('images/logoawal.png'),
                ),
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
            SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(Size(174, 48))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return formlogin();
                          },
                        ));
                      },
                      child: Text('Masuk'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(174, 48)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.blue, width: 2))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return formregister();
                          },
                        ));
                      },
                      child: Text(
                        'Mulai',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Dengan memilih salah satunya, maka Anda setuju pada',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text('Ketentuan Layanan',
                                  style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.underline))),
                          Text('dan', style: TextStyle(fontSize: 12)),
                          TextButton(
                              onPressed: () {},
                              child: Text('Kebijakan Privasi',
                                  style: TextStyle(fontSize: 12))),
                          Text('Eventing',
                              style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.underline)),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
