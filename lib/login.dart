import 'package:flutter/material.dart';
import 'package:imtihon_2oy/Sign_up.dart';
import 'package:imtihon_2oy/welcome.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _errorMessage = '';

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email == "imshuvo97@gmail.com" && password == "12345678") {
      setState(() {
        _errorMessage = '';
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    } else if (email != "imshuvo97@gmail.com") {
      setState(() {
        _errorMessage = 'Invalid email address.';
      });
    } else if (password != "12345678") {
      setState(() {
        _errorMessage = 'Incorrect password.';
      });
    } else {
      setState(() {
        _errorMessage = 'Invalid email address and password.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 20),
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
                    child: const Text(
                      'CONTINUE WITH FACEBOOK',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(height: 5),
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
                    child: const Text(
                      'CONTINUE WITH GOOGLE',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OR LOG IN WITH EMAIL'),
                  ],
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 127, 98, 231),
                    padding: EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                SizedBox(height: 10),
                if (_errorMessage.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      _errorMessage,
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ),
                TextButton(
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 3, 0, 26), fontSize: 15),
                  ),
                  onPressed: () {

                  },
                ),
                TextButton(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 50, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'ALREADY HAVE AN ACCOUNT?  ',
                          style: TextStyle(
                            fontSize: 14.0,
                            height: 17,
                          ),
                        ),
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 14.0,
                            height: 17,
                            color: Color.fromARGB(255, 32, 17, 147),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountCreation()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class SocialMediaButton extends StatelessWidget {
  final String text;
  final AssetImage logo;
  final Color color;
  final VoidCallback onPressed;

  SocialMediaButton({
    required this.text,
    required this.logo,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: ImageIcon(logo, color: Colors.white),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
