import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/profile.dart';

class EditPasswordScreen extends StatefulWidget {
  const EditPasswordScreen({super.key});

  @override
  State<EditPasswordScreen> createState() => _EditPasswordScreen();
}

class _EditPasswordScreen extends State<EditPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double customWidth = width * 0.85;
    bool obscureText = true;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Kembali',
          onPressed: () => {Navigator.pop(context)},
        ),
        title: const Text(
          "Ubah Password",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: const SafeArea(
              child: Center(
                child: Column(children: []),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
          ),
          Container(
            width: customWidth,
            child: Column(
              children: [
                TextFormField(
                  obscureText: obscureText,
                  decoration: const InputDecoration(
                    labelText: 'Password Lama',
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                  style: TextStyle(fontSize: 13),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password Baru',
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                  style: TextStyle(fontSize: 13),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                ),
                SizedBox(
                  width: width,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF33679C),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()),
                      )
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Simpan'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
