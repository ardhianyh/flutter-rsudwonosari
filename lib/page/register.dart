import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/home.dart';
import 'package:rsudwonosari/page/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _Register();
}

class _Register extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double customWidth = width * 0.8;

    DateTime selectedDate = DateTime.now();

    Future<void> selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
      }
    }

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
                    "REGISTER",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                        ),
                        TextFormField(
                          controller: TextEditingController(
                              text: "${selectedDate.toLocal()}".split(' ')[0]),
                          // onTap: () {
                          //   // Below line stops keyboard from appearing
                          //   FocusScope.of(context)
                          //       .requestFocus(new FocusNode());
                          //   selectDate(context);
                          //   // Show Date Picker Here
                          // },
                          decoration: InputDecoration(
                            labelText: 'Tanggal Lahir',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Jenis Kelamin',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Email/Nomor HP',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Konfirmasi Password',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          margin: const EdgeInsets.all(30),
                        ),
                        SizedBox(
                          width: width,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              )
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Register'),
                              ],
                            ),
                          ),
                        ),
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
                              TextSpan(text: 'Sudah memiliki akun?'),
                              TextSpan(
                                text: ' Masuk',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen(),
                                        ),
                                      ),
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
