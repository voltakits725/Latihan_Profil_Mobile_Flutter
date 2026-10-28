import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LayoutRulesExample(),
  ));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Layout Flutter'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              MyPages1(),
              SizedBox(height: 30),
              Divider(thickness: 2),
              SizedBox(height: 20),
              MyPages2(),
              SizedBox(height: 30),
              Divider(thickness: 2),
              SizedBox(height: 20),
              MyPages3(),
            ],
          ),
        ),
      ),
    );
  }
}


// HALAMAN 1: CONSTRAINTS DAN SIZE
class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '1 & 2. Aturan Constraints (Batas) dan Size (Ukuran)',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Induk memberikan batas ukuran kepada anak. '
          'Anak meminta ukuran 500x50, tetapi ukurannya '
          'harus mengikuti batas yang diberikan induk.',
        ),
        const SizedBox(height: 10),

        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100,
            maxWidth: 200,
            minHeight: 100,
            maxHeight: 200,
          ),
          child: Container(
            width: 500,
            height: 50,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              'Saya minta 500x50,\ntapi dapatnya 200x100',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

// HALAMAN 2: CENTER DAN ALIGN
class MyPages2 extends StatelessWidget {
  const MyPages2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '3. Aturan Posisi (dengan Center)',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Kotak merah berukuran 80x80 ditempatkan '
          'di tengah kotak abu-abu menggunakan Center.',
        ),
        const SizedBox(height: 10),

        Container(
          width: 200,
          height: 200,
          color: Colors.grey[300],
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text(
                'Center',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),

        const SizedBox(height: 30),

        const Text(
          '3. Aturan Posisi (dengan Align)',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Kotak hijau berukuran 80x80 ditempatkan '
          'di pojok kanan bawah menggunakan Align.',
        ),
        const SizedBox(height: 10),

        Container(
          width: 200,
          height: 200,
          color: Colors.grey[300],
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                'Align',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// HALAMAN 3: CONTOH ALIGN
class MyPages3 extends StatelessWidget {
  const MyPages3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Contoh Tambahan: Align',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Widget Align dapat mengatur posisi anak '
          'di dalam ruang yang tersedia.',
        ),
        const SizedBox(height: 10),

        Container(
          width: 200,
          height: 200,
          color: Colors.grey[300],
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                'Align',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}