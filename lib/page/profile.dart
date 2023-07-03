import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/home.dart';
import 'package:rsudwonosari/page/profile/edit.dart';
import 'package:rsudwonosari/page/profile/email.dart';
import 'package:rsudwonosari/page/profile/password.dart';
import 'package:rsudwonosari/page/profile/phone.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
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
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Kembali',
          onPressed: () => {Navigator.pop(context)},
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 251,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/header-bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Center(
                child: Image.asset(
                  "assets/images/profile.png",
                  width: 142,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
          ),
          Container(
            width: customWidth,
            child: Column(
              children: [
                SizedBox(
                  width: width,
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xFF073870),
                      side: const BorderSide(
                        color: Color(0xFF073870),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfileScreen(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          const Text("Edit Profile"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(7),
                ),
                SizedBox(
                  width: width,
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xFF073870),
                      side: const BorderSide(
                        color: Color(0xFF073870),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditPasswordScreen(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.lock,
                            size: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          const Text("Ubah Password"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(7),
                ),
                SizedBox(
                  width: width,
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xFF073870),
                      side: const BorderSide(
                        color: Color(0xFF073870),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditPhone(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.phone_android,
                            size: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          const Text("Ubah Nomor Telepon"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(7),
                ),
                SizedBox(
                  width: width,
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xFF073870),
                      side: const BorderSide(
                        color: Color(0xFF073870),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditEmail(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.email,
                            size: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                          ),
                          const Text("Ubah Email"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                ),
                SizedBox(
                  width: width,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFAA0000),
                    ),
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
                        Text('Logout'),
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
