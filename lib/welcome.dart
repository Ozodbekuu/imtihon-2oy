import 'package:flutter/material.dart';
import 'package:imtihon_2oy/topic.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
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
                SizedBox(height: 30),
                const Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Text(
                    'Hi Afsar, Welcome to Silent Moon',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(179, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/elip.png',
                      )
                    ),
                    Image.asset(
                      'assets/images/elip1.png',
                    ),
                    Image.asset(
                      'assets/images/elip2.png',
                    ),
                    
                    Image.asset(
                      'assets/images/imagee.png',
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 460.0),
                      child: Image.asset(
                        'assets/images/pasi.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 470.0, bottom: 10, right: 20, left: 20),
                      child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Topic()), 
                  );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'GET STARTED',
                    style: TextStyle(color: Color.fromARGB(255, 0, 5, 54), fontSize: 16),
                  ),
                ),
              ),
                      )
                  ],
                ),
              ),
            ),
                
              ],
            ),
          ),
        ),
      );
      
  }
}
