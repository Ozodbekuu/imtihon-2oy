import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imtihon_2oy/Sign_up.dart';
import 'package:imtihon_2oy/login.dart';

void main() => runApp(SilentMoonApp());

class SilentMoonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Silent Moon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
          button: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: SilentMoonHome(),
    );
  }
}

class SilentMoonHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(width: 10.0),
                  Text(
                    'Silent  ',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Image.asset(
                    'assets/images/logo.png', scale: 1,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Moon',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/Frame.png',
                      )
                    ),
                    Image.asset(
                      'assets/images/imagg2.png',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            ),
            Text(
              'We are what we do',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Thousand of people are usign silent moon for smalls meditation',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 1.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountCreation()), // SecondPage funksiyasini ochish
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(top: 15, bottom: 15, left: 150, right: 150),
                  textStyle: Theme.of(context).textTheme.button,
                  backgroundColor: Color.fromARGB(255, 126, 112, 233),
                ),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.05,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()), 
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 65, right: 20),
                  child: Row(
                    children: [
                      Text(
                        'ALREADY HAVE AN ACCOUNT?  ',
                        style: TextStyle(
                          fontSize: 14.0,
                          // letterSpacing: 0.05,
                          height: 7,
                        ),
                      ),
                      Text(
                        'LOG IN',
                        style: TextStyle(
                          fontSize: 14.0,
                          // letterSpacing: 0.05,
                          height: 7,
                          color: Color.fromARGB(255, 32, 17, 147),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
