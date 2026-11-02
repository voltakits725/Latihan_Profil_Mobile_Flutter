import 'package:flutter/material.dart';
import 'skill_card.dart';

class SkillGrid extends StatelessWidget {
  final List<Map<String, String>> daftar;

  const SkillGrid({
    super.key,
    required this.daftar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: daftar.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return SkillCard(
            nama: daftar[index]['nama']!,
            gambar: daftar[index]['gambar']!,
          );
        },
      ),
    );
  }
}