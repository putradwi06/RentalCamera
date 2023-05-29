import 'package:flutter/material.dart';

class addProfil extends StatelessWidget {
  const addProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 100.0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
