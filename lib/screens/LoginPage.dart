import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/HomePage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final username = TextEditingController();
  final password = TextEditingController();

  final String checkUsername = 'riffana';
  final String checkPassword = '1234567';

  void login() {
    if (username.text == checkUsername && password.text == checkPassword) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('invalid username and password!'),
          backgroundColor: const Color.fromARGB(144, 37, 12, 10),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN PAGE'),
        backgroundColor: Colors.brown,
        leading: Icon(Icons.login),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: username,
              decoration: InputDecoration(
                
                labelText: 'UserName',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),

            TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: 'passWord',

                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),

            SizedBox(height: 60),

            ElevatedButton(onPressed: login, child: Text('LOGIN')),
          ],
        ),
      ),
    );
  }
}
