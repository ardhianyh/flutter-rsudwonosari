import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/jadwal/dokter.dart';

class JadwalDetail extends StatelessWidget {
  const JadwalDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: JadwalDetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class JadwalDetailScreen extends StatefulWidget {
  const JadwalDetailScreen({super.key});

  @override
  State<JadwalDetailScreen> createState() => _JadwalDetailScreen();
}

class _JadwalDetailScreen extends State<JadwalDetailScreen> {
  @override
  Widget build(BuildContext context) {
    const List<Tab> tabs = <Tab>[
      Tab(
        text: '6 Juni 2023',
      ),
      Tab(text: '7 Juni 2023'),
    ];

    double fullWidth = MediaQuery.of(context).size.width;

    void onBack() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const JadwalDokterList(),
        ),
      );
    }

    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Penyakit Dalam',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.arrow_back),
              tooltip: 'Kembali',
              onPressed: () => {onBack()},
            ),
            bottom: const TabBar(
              indicatorColor: Color(0xFF002B5B),
              labelColor: Colors.black,
              unselectedLabelColor: Color(0xFF727272),
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                width: fullWidth,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: const Color(0xFF073870),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF073870),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Tersedia 5",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "dr. Mradipta Arrya Manubawa, Sp.Pd",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(
                                color: const Color(0xFF073870),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "07.30-14.30",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF073870),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Color(0xFF073870),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Tutup",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "dr. Yuli Astuti, Sp.PD, Sp.JP",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(
                                color: const Color(0xFF073870),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "07.30-14.30",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF073870),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: fullWidth,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: const Color(0xFF073870),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF073870),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Tersedia 5",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "dr. Mradipta Arrya Manubawa, Sp.Pd",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(
                                color: const Color(0xFF073870),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "07.30-14.30",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF073870),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Color(0xFF073870),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Tutup",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "dr. Yuli Astuti, Sp.PD, Sp.JP",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 100,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(
                                color: const Color(0xFF073870),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "07.30-14.30",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xFF073870),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
