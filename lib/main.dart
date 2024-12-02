import 'package:flutter/material.dart';
import 'package:tarsis_site/body.dart';
import 'package:tarsis_site/header.dart';
import 'package:tarsis_site/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Társis Lira | Perfil Profissional',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Header(), Home(), BodySite()],
          ),
        ),
      ),
    );
  }
}
