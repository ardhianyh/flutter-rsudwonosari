import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/aktifitas/aktifias.dart';
import 'package:rsudwonosari/page/home.dart';
import 'package:rsudwonosari/page/pendaftaran/baru.dart';
import 'package:rsudwonosari/page/pendaftaran/lama.dart';

class Pendaftaran extends StatelessWidget {
  const Pendaftaran({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PendaftaranScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PendaftaranScreen extends StatefulWidget {
  const PendaftaranScreen({super.key});

  @override
  State<PendaftaranScreen> createState() => _PendaftaranScreen();
}

class _PendaftaranScreen extends State<PendaftaranScreen> {
  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    int selectedIndex = 1;

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Aktifitas(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: Color(0xFF002B5B),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Text(
                  "RSUD WONOSARI",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                ),
                const Text(
                  "PENDAFTARAN ONLINE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(50),
                ),
                Container(
                  width: fullWidth,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF6F6F6),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PendaftaranLama(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/pendaftaran_lama.png",
                                width: 100,
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                              ),
                              const Text(
                                "Pendaftaran\nPasien Lama",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PendaftaranBaru(),
                      ),
                    );
                  },
                  child: Container(
                    width: fullWidth,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF6F6F6),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/pendaftaran_baru.png",
                                width: 100,
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                              ),
                              const Text(
                                "Pendaftaran\nPasien Baru",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white54,
        backgroundColor: Color(0xFF002B5B),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: 'Pendaftaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_rounded),
            label: 'Aktifitas',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}
