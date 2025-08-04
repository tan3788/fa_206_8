import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IDCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IDCardScreen extends StatelessWidget {
  const IDCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  'Md. Tanbir Alom Tarek',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Batch: 61, Department of CSE',
                  style: TextStyle(fontSize: 16),
                ),
                Divider(height: 30, thickness: 1),
                ListTile(
                  leading: Icon(Icons.badge),
                  title: Text('ID: 0182310012101206'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email: ta992416@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone: +8801889946804'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
