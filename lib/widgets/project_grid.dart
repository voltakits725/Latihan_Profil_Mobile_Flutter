import 'package:flutter/material.dart';
import 'package:pertemuanke5/widgets/project_card.dart';

class ProjectGrid extends StatelessWidget {
  final List<Map<String, String>> daftarProject;
  const ProjectGrid({super.key, required this.daftarProject});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        itemCount: daftarProject.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ), 
        itemBuilder: (context, index){
          return ProjectCard(
            namaProject: daftarProject[index]['namaProject']!, 
            deskripsi: daftarProject[index]['deskripsi']!, 
            teknologi: daftarProject[index]['teknologi']!, 
            gambar: daftarProject[index]['gambar']!);
        }
      ),

    );
  }
}