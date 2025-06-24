import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// ----------  MODEL ------------ ///
class SkillModel {
  final String name;
  final IconData icon;
  final double level; // 0.0 – 1.0

  SkillModel({required this.name, required this.icon, required this.level});
}

/// ----------  SCREEN ------------ ///
class Skills extends StatelessWidget {
  Skills({super.key}); //  <-- NO `const` here!

  final List<SkillModel> _skills = [
    SkillModel(name: 'Flutter', icon: Icons.flutter_dash, level: .70),
    SkillModel(name: 'Dart', icon: Icons.code, level: .70),
    SkillModel(name: 'Firebase', icon: Icons.fireplace, level: .80),
    SkillModel(name: 'MongoDB', icon: Icons.storage, level: .70),
    SkillModel(name: 'HTML', icon: Icons.language, level: .80),
    SkillModel(name: 'CSS', icon: Icons.brush, level: .80),
    SkillModel(name: 'JavaScript', icon: Icons.javascript, level: .60),
    SkillModel(name: 'Python', icon: Icons.memory, level: .80),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFF9F9F9),
      backgroundColor: Color.fromARGB(200, 10, 25, 49),
      appBar: AppBar(
        title: const Text(
          'My Skills',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(200, 10, 25, 49),
        foregroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Without sharpening your weapon,\nstanding on the battlefield would "
              "not increase your chance of winning.",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                itemCount: _skills.length,
                separatorBuilder: (_, __) => const SizedBox(height: 20),
                itemBuilder: (_, idx) => _SkillCard(skill: _skills[idx]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ----------  CARD WIDGET ------------ ///
class _SkillCard extends StatelessWidget {
  final SkillModel skill;
  const _SkillCard({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color.fromARGB(200, 10, 25, 49),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.15),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(skill.icon, color: Colors.deepOrange),
              const SizedBox(width: 10),
              Text(
                skill.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Text(
                "${(skill.level * 100).round()}%",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: skill.level,
              minHeight: 8,
              backgroundColor: Colors.grey.shade200,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Colors.deepOrange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
