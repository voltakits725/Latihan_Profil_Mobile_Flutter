import 'package:flutter/material.dart';
import 'widgets/project_grid.dart';

class ProjectGua extends StatelessWidget {
  final List<Map<String, String>> daftarproject = const [
    {
      'namaProject': 'Taraka Cafe Management System',
      'deskripsi': 'Aplikasi manajemen kafe untuk mengelola menu dan pesanan.',
      'teknologi': 'Laravel, MySQL, Tailwind CSS',
      'gambar': 'assets/images/taraka.png',
    },
    {
      'namaProject': 'VoltaKits',
      'deskripsi': 'Sistem penjualan jersey bola dan pengelolaan stok.',
      'teknologi': 'CodeIgniter, MySQL, Bootstrap',
      'gambar': 'assets/images/voltakits.png',
    },
    {
      'namaProject': 'MBTI Test Kepribadian Desktop',
      'deskripsi': 'Aplikasi desktop untuk mengidentifikasi tipe kepribadian MBTI.',
      'teknologi': 'Java, SQLite',
      'gambar': 'assets/images/mbti.png',
    },
  ];
  const ProjectGua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kumpulan Project Gua'),
      backgroundColor: Colors.lightBlue,
      centerTitle: true,
      
      ),
      body: ProjectGrid(daftarProject: daftarproject)
    );
  }
}