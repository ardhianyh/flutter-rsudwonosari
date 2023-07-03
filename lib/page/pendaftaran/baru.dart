import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:rsudwonosari/page/home.dart';

/// Flutter code sample for [Stepper].

class PendaftaranBaru extends StatelessWidget {
  const PendaftaranBaru({super.key});

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
            "Pendaftaran Pasien Baru",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: const PendafaranBaruScreen(),
      ),
    );
  }
}

class PendafaranBaruScreen extends StatefulWidget {
  const PendafaranBaruScreen({super.key});

  @override
  State<PendafaranBaruScreen> createState() => _PendafaranBaruScreenState();
}

class _PendafaranBaruScreenState extends State<PendafaranBaruScreen> {
  int activeStep = 0;
  int upperBound = 4;

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
                4,
                5,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                previousButton(),
                nextButton(),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(5),
            ),
            const Text(
              "Bidang isian yang bertanda (*) wajib diisi",
              style: TextStyle(
                color: Color(0xFF727272),
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nextButton() {
    if (activeStep < upperBound) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF33679C),
        ),
        onPressed: () {
          if (activeStep < upperBound) {
            setState(() {
              activeStep++;
            });
          }
        },
        child: const Text('Selanjutnya'),
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF33679C),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        child: const Text('Simpan'),
      );
    }
  }

  /// Returns the previous button.
  Widget previousButton() {
    if (activeStep == 0) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: null,
        child: const Text(
          'Sebelumnya',
          style: TextStyle(color: Colors.black),
        ),
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: () {
          setState(() {
            activeStep--;
          });
        },
        child: const Text(
          'Sebelumnya',
          style: TextStyle(color: Colors.black),
        ),
      );
    }
  }

  Widget bodyStepper(fullWidth) {
    if (activeStep == 0) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("NIK *"),
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
            child: const Text("Nama Lengkap *"),
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
            child: const Text("Jenis Kelamin *"),
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
            child: const Text("Tempat Lahir *"),
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
            child: const Text("Agama *"),
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
            child: const Text("Pendidikan *"),
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
            child: const Text("Alamat *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
        ],
      );
    } else if (activeStep == 1) {
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
            child: const Text("Nomor HP *"),
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
            child: const Text("Email *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
        ],
      );
    } else if (activeStep == 2) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Nama Penanggung Jawab *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
        ],
      );
    } else if (activeStep == 3) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("Pekerjaan *"),
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
            child: const Text("Suku *"),
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
            child: const Text("Bahasa *"),
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
            child: const Text("Golongan Darah *"),
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
            child: const Text("Status Pernikahan *"),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
            style: TextStyle(fontSize: 13),
          ),
        ],
      );
    } else if (activeStep == 4) {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 15),
            alignment: Alignment.centerLeft,
            child: const Text("Foto KTP *"),
          ),
          Container(
            width: fullWidth,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFDDDDDD),
            ),
            child: const Center(
              child: Icon(
                Icons.photo_camera_rounded,
                color: Color(0xFF727272),
                size: 100,
              ),
            ),
          )
        ],
      );
    }

    return const Text('Default');
  }
}
