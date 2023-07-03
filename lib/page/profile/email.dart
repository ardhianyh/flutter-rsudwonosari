import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/profile.dart';

class EditEmail extends StatefulWidget {
  const EditEmail({super.key});
  @override
  State<StatefulWidget> createState() => _EditEmail();
}

class _EditEmail extends State<EditEmail> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double customWidth = width * 0.85;

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
          "Ubah Email",
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
                  decoration: const InputDecoration(
                    labelText: 'Email Saat Ini',
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
                  decoration: InputDecoration(
                    labelText: 'Email Baru',
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
