import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('A'),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: signOut,
        child: Text('Выйти'),
      )
    ),
  );

  Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
