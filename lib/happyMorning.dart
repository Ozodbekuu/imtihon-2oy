import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HappyMorningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Morning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HappyMorningHomePage(),
    );
  }
}

class HappyMorningHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(),
            child: Expanded(
              child: Image.asset(
                'assets/images/rasm2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                GreetingSection(),
                CourseSection(),
                NarratorSection(),
              ],
            ),
          ),
        ],
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
            'Happy Morning',
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'COURSE',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Text(
            'Ease the mind into a restful night’s sleep with these deep, ambient tones.',
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/yozuv1.png',
          ),
        ],
      ),
    );
  }
}

class CourseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Pick a Narrator',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'MALE VOICE    ',
                  style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 2, 21, 49), fontSize: 17),
                ),
              ),
              Text(
                '|         FEMALE VOICE',
                style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 2, 21, 49), fontSize: 17),
              )
            ],
          ),
          // Example courses
          CourseCard(
            title: 'Focus Attention',
            description: '10 MIN',
            imageUrl: 'assets/images/10.png',
          ),
          CourseCard(
            title: 'Body Scan',
            description: '5 MIN',
            imageUrl: 'assets/images/10.png',
          ),
          CourseCard(
            title: 'Making Happiness',
            description: '3 MIN',
            imageUrl: 'assets/images/10.png',
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  CourseCard({required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }
}

class NarratorSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Narrators',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Example narrators
          NarratorCard(
            name: 'Anna Edison',
            bio: 'Expert storyteller',
            imageUrl: 'assets/images/10.png',
          ),
          NarratorCard(
            name: 'Jane Smith',
            bio: 'Professional narrator',
            imageUrl: 'assets/images/10.png',
          ),
        ],
      ),
    );
  }
}

class NarratorCard extends StatelessWidget {
  final String name;
  final String bio;
  final String imageUrl;

  NarratorCard({required this.name, required this.bio, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(bio),
      ),
    );
  }
}
