import 'package:flutter/material.dart';
import 'package:rsudwonosari/page/aktifitas/rating.dart';
import 'package:rsudwonosari/page/home.dart';
import 'package:rsudwonosari/page/pendaftaran/pendaftaran.dart';

class Aktifitas extends StatelessWidget {
  const Aktifitas({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AktifitasScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AktifitasScreen extends StatefulWidget {
  const AktifitasScreen({super.key});

  @override
  State<AktifitasScreen> createState() => _AktifitasScreen();
}

class _AktifitasScreen extends State<AktifitasScreen> {
  @override
  Widget build(BuildContext context) {
    const List<Tab> tabs = <Tab>[
      Tab(
        text: 'Kunjungan',
      ),
      Tab(text: 'Riwayat'),
    ];

    double fullWidth = MediaQuery.of(context).size.width;
    int selectedIndex = 2;

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Pendaftaran(),
          ),
        );
      } else if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      }
    }

    Future<void> _onCancel() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Konfirmasi'),
            content: const SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'Apakah anda yakin membatalkan kunjungan pada Tgl: 06-06-202 12.30, Klinik : Gigi',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'Tidak',
                  style: TextStyle(
                    color: Color(0xFF33679C),
                  ),
                ),
                onPressed: () {
                  print('Confirmed');
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text(
                  'Ya',
                  style: TextStyle(
                    color: Color(0xFF33679C),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    Future<void> _onConfirm() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Konfirmasi'),
            content: const SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'Apakah anda yakin kunjungan pada Tgl: 06-06-202 12.30, Klinik : Gigi telah dilakukan?',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'Tidak',
                  style: TextStyle(
                    color: Color(0xFF33679C),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text(
                  'Ya',
                  style: TextStyle(
                    color: Color(0xFF33679C),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Aktivitas',
              style: TextStyle(
                color: Colors.black,
              ),
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
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                              1,
                              4,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              color: Color(0xFFBAD7E9),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Klinik Penyakit Dalam',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '06-06-2023',
                                  style: TextStyle(
                                    color: Color(0xFF144272),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'dr. Mradipta Arrya Manubawa, Sp.Pd',
                                  style: TextStyle(
                                      color: Color(0xFF073870),
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                ),
                                const Text(
                                  'Nomor 10',
                                  style: TextStyle(
                                    color: Color(0xFF073870),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                ),
                                const Text(
                                  'Estimasi Jam 10.00 ',
                                  style: TextStyle(
                                    color: Color(0xFF073870),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Color(0xFFA8A8A8),
                                  width: 0.5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 35,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFAA0000),
                                    ),
                                    onPressed: () => {_onCancel()},
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Batal'),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF33679C),
                                    ),
                                    onPressed: () => {_onConfirm()},
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Selesai'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                              1,
                              4,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              color: Color(0xFFBAD7E9),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Klinik Penyakit Dalam',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '06-06-2023',
                                  style: TextStyle(
                                    color: Color(0xFF144272),
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'dr. Mradipta Arrya Manubawa, Sp.Pd',
                                  style: TextStyle(
                                      color: Color(0xFF073870),
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                ),
                                const Text(
                                  'Nomor 10',
                                  style: TextStyle(
                                    color: Color(0xFF073870),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                ),
                                const Text(
                                  'Estimasi Jam 10.00 ',
                                  style: TextStyle(
                                    color: Color(0xFF073870),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Color(0xFFA8A8A8),
                                  width: 0.5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SizedBox(
                              height: 35,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFFB700),
                                ),
                                onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Rating()),
                                  )
                                },
                                child: const Text(
                                  'Rating',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                              1,
                              4,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              color: Color(0xFFBAD7E9),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Klinik Penyakit Dalam',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      '06-06-2023',
                                      style: TextStyle(
                                        color: Color(0xFF144272),
                                        fontSize: 11,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[700],
                                          size: 20,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'dr. Mradipta Arrya Manubawa, Sp.Pd',
                                  style: TextStyle(
                                      color: Color(0xFF073870),
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                ),
                                const Text(
                                  'Nomor 10',
                                  style: TextStyle(
                                    color: Color(0xFF073870),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 2),
                                ),
                                const Text(
                                  'Estimasi Jam 10.00 ',
                                  style: TextStyle(
                                    color: Color(0xFF073870),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: fullWidth,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                label: 'Aktifitas',
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
      }),
    );
  }
}
