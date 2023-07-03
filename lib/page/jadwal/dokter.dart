import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/home.dart';
import 'package:rsudwonosari/page/jadwal/jadwal.dart';

class JadwalDokterList extends StatefulWidget {
  const JadwalDokterList({super.key});
  @override
  State<StatefulWidget> createState() => _JadwalDokterList();
}

class _JadwalDokterList extends State<JadwalDokterList> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFBAD7E9),
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Kembali',
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            )
          },
        ),
        title: const Text(
          "Jadwal Dokter",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: width,
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Cari Klinik',
                    hintText: 'Cari Klinik',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                  ),
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JadwalDetail(),
                      ),
                    )
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Penyakit Dalam",
                        style: TextStyle(fontSize: 14),
                      ),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JadwalDetail(),
                      ),
                    )
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kebidanan dan Kandungan",
                        style: TextStyle(fontSize: 14),
                      ),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
