import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/profile.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreen();
}

class _EditProfileScreen extends State<EditProfileScreen> {
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
          "Edit Profile",
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
            child: SafeArea(
              child: Center(
                  child: Column(
                children: [
                  Image.asset(
                    "assets/images/edit-profile.png",
                    width: 142,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Ubah Foto"),
                  ),
                ],
              )),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
          ),
          Container(
            width: customWidth,
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nama',
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
                    labelText: 'Tanggal Lahir',
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
                    labelText: 'Jenis Kelamin',
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
