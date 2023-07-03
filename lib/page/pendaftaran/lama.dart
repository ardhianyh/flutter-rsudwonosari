import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:rsudwonosari/page/home.dart';

class PendaftaranLama extends StatelessWidget {
  const PendaftaranLama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Kembali',
            onPressed: () => {Navigator.pop(context)},
          ),
          title: const Text(
            "Pendaftaran Pasien Lama",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: const PendaftaranLamaScreen(),
      ),
    );
  }
}

class PendaftaranLamaScreen extends StatefulWidget {
  const PendaftaranLamaScreen({super.key});

  @override
  State<PendaftaranLamaScreen> createState() => _PendaftaranLamaScreenState();
}

class _PendaftaranLamaScreenState extends State<PendaftaranLamaScreen> {
  int activeStep = 0;
  int upperBound = 2;

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            NumberStepper(
              enableNextPreviousButtons: false,
              lineLength: 35,
              stepColor: Color(0xFFDDDDDD),
              activeStepBorderColor: Color(0xFF33679C),
              activeStepColor: Colors.white,
              lineColor: Color(0xFF33679C),
              stepRadius: 15.0,
              numbers: const [
                1,
                2,
                3,
              ],
              activeStep: activeStep,
              onStepReached: (index) {
                setState(() {
                  activeStep = index;
                });
              },
            ),
            Expanded(
              child: bodyStepper(fullWidth),
            ),
          ],
        ),
      ),
    );
  }

  Widget bodyStepper(fullWidth) {
    if (activeStep == 0) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Jenis Identitas *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("No Identitas *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Tanggal Lahir *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 25),
          ),
          SizedBox(
            width: fullWidth,
            height: 35,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF33679C),
              ),
              onPressed: () => {
                setState(() {
                  activeStep++;
                })
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Cari'),
                ],
              ),
            ),
          ),
        ],
      );
    } else if (activeStep == 1) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Jenis Identitas *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("No Identitas *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Tanggal Lahir *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Nomor RM'),
                const Text(
                  '10-09-09',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                ),
                const Text('Nama'),
                const Text(
                  'A*** T*****',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                ),
                const Text('Jenis Kelamin'),
                const Text(
                  'Perempuan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                ),
                const Text('Alamat'),
                const Text(
                  'Jl. K******** S******* M**** S*****',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
          ),
          const Text('Apakah data berikut sudah benar?'),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF33679C),
                  ),
                  onPressed: () => {
                    setState(() {
                      activeStep++;
                    })
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Ya'),
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
                  onPressed: () => {
                    setState(() {
                      activeStep++;
                    })
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Tidak'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else if (activeStep == 2) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Jaminan *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Klinik *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Dokter *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Tanggal Lahir *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Tanggal Kunjungan *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            child: const Text("Foto KTP *"),
          ),
          Container(
            width: fullWidth,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFDDDDDD),
            ),
            child: const Center(
              child: Icon(
                Icons.photo_camera_rounded,
                color: Color(0xFF727272),
                size: 50,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
          ),
          SizedBox(
            width: fullWidth,
            height: 35,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF33679C),
              ),
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
                  Text('Simpan'),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return const Text('Default');
  }
}
