import 'package:flutter/material.dart';
import 'package:imtihon_2oy/Goodmorning.dart';

class Topic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                'What Brings you to Silent Moon?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 5, 1, 13),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 100),
                child: Text(
                  'Choose a topic to focus on:',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 8, 1, 19),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    FeatureButton(
                      imagePath: 'assets/images/1.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/2.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/3.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/4.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/5.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/6.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/7.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/8.png',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Goodmorning()),
                        );
                      },
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

class FeatureButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const FeatureButton({
    Key? key,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.deepPurple,
        padding: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            imagePath,
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

// Dummy LoginPage to avoid errors. Replace with your actual LoginPage implementation.
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Center(child: Text('')),
    );
  }
}
