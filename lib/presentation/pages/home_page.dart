import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Flutter Demo Home Page'),
        ),
        body: const Center(child: Text('Flutter Demo Home Page')),
      );
}
