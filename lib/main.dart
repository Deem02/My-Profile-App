// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: HomeP(),
    );
  }
}

class HomeP extends StatelessWidget {
  const HomeP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 213, 165, 255),
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 250,
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://example.com/your_image.jpg'),
                radius: 100,
              ),
            ),
            ListTile(
              title: Text("Name"),
              subtitle: Text("Lena"),
              leading: Icon(CupertinoIcons.person),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            ),
            ListTile(
              title: Text("Phone"),
              subtitle: Text("05000000001"),
              leading: Icon(Icons.phone),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            ),
            ListTile(
              title: Text("City"),
              subtitle: Text("Your City"),
              leading: Icon(Icons.location_city),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("lena@example.com"),
              leading: Icon(Icons.email),
              trailing: Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
