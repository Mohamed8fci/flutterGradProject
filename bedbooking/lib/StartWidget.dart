import 'package:bedbooking/Login_screen.dart';
import 'package:bedbooking/network/shared/constant.dart';
import 'package:flutter/material.dart';

import 'registerScreen.dart';

class startWidget extends StatelessWidget {
  const startWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/bedlogo.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Welcome To Save A Life',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 9.0,
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: defaultPadding,
                        horizontal: defaultPadding * 4),
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding / 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: defaultPadding,
                        horizontal: defaultPadding * 4),
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding / 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        'SignUp',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
