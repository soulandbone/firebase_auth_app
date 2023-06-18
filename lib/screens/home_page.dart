import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, actions: [
        IconButton(onPressed: signOut, icon: const Icon(Icons.logout))
      ]),
      body: Center(
        child: Text(
            'you are authenticated as ${FirebaseAuth.instance.currentUser!.email}'),
      ),
    );
  }
}
