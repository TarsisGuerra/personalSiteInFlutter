import 'package:flutter/material.dart';
import 'package:tarsis_site/body.dart';
import 'package:tarsis_site/foot.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth >= 600 && screenWidth < 1250;
    final isMenor = screenWidth < 780;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: isTablet
                  ? screenWidth * 0.08
                  : isMenor
                      ? screenWidth * 0.01
                      : screenWidth * 0.15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              const Home(),
              const BodySite(),
              const FootSite()
            ],
          ),
        ),
      ),
    );
  }
}
