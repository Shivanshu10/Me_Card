import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MiCard(),
    );
  }
}

class MiCard extends StatefulWidget {
  @override
  _MiCardState createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/avatar.jpeg"),
            ),
            Text("Shivanshu Mishra",
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ),
            Text("FLUTTER DEVELOPER",
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              )
            ),
            ContactInfoCard(icon: Icons.phone, text: '+91 9876543210'),
            ContactInfoCard(icon: Icons.email, text: 'smail@gmail.com')
          ],
        )
      )
    );
  }
}

class ContactInfoCard extends StatelessWidget {
  final icon, text;
  ContactInfoCard({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListTile(
            leading: Icon(icon, color: Colors.teal),
            title: Text(text,
              maxLines: 1,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade900,
                fontFamily: "Source Sans Pro"
              )
            ),
          )
        )
      ),
    );
  }
}