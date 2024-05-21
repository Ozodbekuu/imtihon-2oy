import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon_2oy/welcome.dart';

class AccountCreation extends StatefulWidget {
  @override
  _AccountCreationState createState() => _AccountCreationState();
}

class _AccountCreationState extends State<AccountCreation> {
  bool _isPrivacyPolicyChecked = false;
  String _errorMessage = '';

  void _getStarted() {
    if (_isPrivacyPolicyChecked) {
      setState(() {
        _errorMessage = '';
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    } else {
      setState(() {
        _errorMessage = 'You must agree to the Privacy Policy.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1, right: 320),
                child: Center(
                  child: Image.asset(
                    'assets/images/chiq.png',
                    height: 130,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Create your Account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Facebook login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 127, 98, 231),
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child:const Text(
                    'CONTINUE WITH FACEBOOK',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Google login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child:const Text(
                    'CONTINUE WITH GOOGLE',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 25),
              const Text(
                'OR LOG IN WITH EMAIL'
                ),
              SizedBox(height: 30),
              TextFormField(
                initialValue: "afsar",
                decoration: InputDecoration(
                  hintText: 'afsar',
                  suffixIcon: Icon(Icons.check, color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              TextFormField(
                initialValue: "imshuvo97@gmail.com",
                decoration: InputDecoration(
                  hintText: 'Your Email...',
                  suffixIcon: Icon(Icons.check, color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              TextFormField(
                initialValue: "••••••••••",
                decoration: InputDecoration(
                  hintText: 'Password...',
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Checkbox(
                    value: _isPrivacyPolicyChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isPrivacyPolicyChecked = value ?? false;
                      });
                    },
                  ),
                  const Expanded(
                    child: Row(
                      children: [
                        Text(
                          'I have read the Privacy Policy',
                          style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    _errorMessage,
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _getStarted,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 127, 98, 231),
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'GET STARTED',
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
