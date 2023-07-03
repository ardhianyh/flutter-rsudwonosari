import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RSUD Wonosari",
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF002B5B)),
      home: const FirstScreen(title: 'RSDU Wonosari App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key, required this.title});
  final String title;

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/hospital.png",
              width: 300,
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.all(5),
            ),
            const Text(
              'RSUD WONOSARI',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Stay Healthy and Happy",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            Container(
              margin: const EdgeInsets.all(30),
            ),
            SizedBox(
                width: 200,
                height: 35,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    )
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Mulai'),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
