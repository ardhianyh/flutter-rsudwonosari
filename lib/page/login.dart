import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/home.dart';
import 'package:rsudwonosari/page/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double customWidth = width * 0.8;

    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            width: customWidth,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Text(
                  "MASUK",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Username *"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan Email/No Telepon',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                        style: TextStyle(fontSize: 13),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Password *"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Password',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                        style: TextStyle(fontSize: 13),
                      ),
                      Container(
                        margin: const EdgeInsets.all(50),
                      ),
                      SizedBox(
                          width: width,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              )
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Masuk'),
                              ],
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.all(10),
                      ),
                      RichText(
                          text: TextSpan(
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Belum memiliki akun?'),
                          TextSpan(
                              text: ' Register',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen()),
                                    ),
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
