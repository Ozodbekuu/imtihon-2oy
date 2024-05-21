import 'package:flutter/material.dart';

void main() {
  runApp(HappyMorningApp());
}

class HappyMorningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Morning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Goodmorning(),
    );
  }
}

class Goodmorning extends StatefulWidget {
  @override
  _GoodmorningState createState() => _GoodmorningState();
}

class _GoodmorningState extends State<Goodmorning> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    GreetingSection(),
    FeatureSection(),
    Placeholder(), // Placeholder for Meditate section
    Placeholder(), // Placeholder for Music section
    AfterSection(), // New After section
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 65.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Silent  ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                'assets/images/logo.png',
                scale: 1,
                height: 32,
              ),
              SizedBox(width: 10.0),
              const Text(
                'Moon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bedtime),
            label: 'Sleep',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Meditate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'After', // New After item
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class GreetingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Good Morning, Afsar',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
            'We wish you have a good day',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class FeatureSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HappyMorningApp()),
              );
            },
            child: Text("Create Account"),
          ),
          FeatureButton(
            imagePath: 'assets/images/11.png',
            text: 'Sleep',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HappyMorningApp()),
              );
            },
          ),
          FeatureButton(
            imagePath: 'assets/images/12.png',
            text: 'Meditate',
            onPressed: () {},
          ),
          FeatureButton(
            imagePath: 'assets/images/13.png',
            text: 'Music',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const FeatureButton({
    required this.imagePath,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        textStyle: TextStyle(fontSize: 16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath, width: 50, height: 50),
          SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }
}

class AfterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'After ',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
            'This is the After section',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class AccountCreation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Creation'),
      ),
      body: Center(
        child: Text('Create your account here.'),
      ),
    );
  }
}
