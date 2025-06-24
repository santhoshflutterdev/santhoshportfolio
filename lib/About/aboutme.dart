import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back(); // ⬅️ This will go back to the previous screen
          },
        ),
      ),
      backgroundColor: Color.fromARGB(200, 10, 25, 49),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "About",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                " Me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "        I'm a passionate Flutter developer with hands-on \nexperience in building cross-platform mobile applications using Dart and Flutter. I'm well-versed in integrating Firebase services and implementing efficient state management techniques like GetX and Provider. \n     As a quick learner and a team player, I adapt quickly to new technologies and enjoy solving real-world problems through \n  clean and maintainable code. I'm always ready to take on new \n    challenges and contribute to impactful projects with \n                               creativity and dedication.",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 100),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.png',
                      fit: BoxFit.cover, // 👈 this avoids cropping the image
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
