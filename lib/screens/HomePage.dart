import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';

class HomePage extends StatelessWidget {
  List<String>myItems=[
    'Bmw',
    'Porsche',
    'Audi',
    'Innova',
    'Defender'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME PAGE'),
      backgroundColor: Colors.teal,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>Loginpage()),
            );
        
          },
           icon: Icon(Icons.logout_rounded))
      ],
      ),

      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(myItems[index]),
          );
        }),
    );
  }
}