import 'package:flutter/material.dart';
import 'widgets/skill_grid.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  // Data bahasa pemrograman
  final List<Map<String, String>> daftarbahasa = const [
    {'nama': 'Dart', 'gambar': 'assets/images/dart.png'},
    {'nama': 'Python', 'gambar': 'assets/images/python.png'},
    {'nama': 'Java', 'gambar': 'assets/images/java.png'},
    {'nama': 'C Sharp (C#)', 'gambar': 'assets/images/csharp.png'},
    {'nama': 'PHP', 'gambar': 'assets/images/php.png'},
    {'nama': 'JavaScript', 'gambar': 'assets/images/js.png'},
  ];

  // Data framework
  final List<Map<String, String>> daftarframework = const [
    {'nama': 'Flutter', 'gambar': 'assets/images/flutter.png'},
    {'nama': 'Laravel', 'gambar': 'assets/images/laravel.png'},
    {'nama': 'Tailwind', 'gambar': 'assets/images/tailwind.png'},
    {'nama': 'Express.js', 'gambar': 'assets/images/express.png'},
    {'nama': 'Flask', 'gambar': 'assets/images/flask.png'},
    {'nama': 'VUE.JS', 'gambar': 'assets/images/vue.png'},

  ];

  // Data database
  final List<Map<String, String>> daftardatabase = const [
    {'nama': 'MySQL', 'gambar': 'assets/images/mysql.png'},
    {'nama': 'PostgreSQL', 'gambar': 'assets/images/postgresql.png'},
    {'nama': 'MongoDB', 'gambar': 'assets/images/mongo.png'},
    {'nama': 'SQLite', 'gambar': 'assets/images/sqlite.png'},
    
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Skills'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.amber,
            indicatorWeight: 4,
            tabs: [
              Tab(
                icon: Icon(Icons.code),
                text: 'Bahasa',
              ),
              Tab(
                icon: Icon(Icons.layers),
                text: 'Framework',
              ),
              Tab(
                icon: Icon(Icons.storage),
                text: 'Database',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SkillGrid(daftar: daftarbahasa),
            SkillGrid(daftar: daftarframework),
            SkillGrid(daftar: daftardatabase),
          ],
        ),
      ),
    );
  }
}