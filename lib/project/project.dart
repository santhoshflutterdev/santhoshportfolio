import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Project extends StatelessWidget {
  const Project({super.key});

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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                "Projects",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),

            // quizz app project details
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 350,

                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.15),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      top: BorderSide(color: Colors.deepOrange, width: 2),
                      bottom: BorderSide(color: Colors.deepOrange, width: 2),
                      // No left and right border
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow, color: Colors.white, size: 40),
                      SizedBox(height: 8),
                      Text(
                        "Quiz Application",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),

                      SizedBox(height: 8),
                      Text(
                        "        Quiz App is a mobile application built using Flutter to test users’ knowledge across various  \n                                    topics. \n      It features multiple-choice questions, real-time score tracking, and a clean, responsive UI. \n     Users can navigate between questions, view progress, and see final results instantly. \n      The app showcases my skills in Flutter UI, state management, and user interaction design. ",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                // expense app project details
                SizedBox(height: 10),
                Container(
                  height: 300,
                  width: 350,

                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.15),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      top: BorderSide(color: Colors.deepOrange, width: 2),
                      bottom: BorderSide(color: Colors.deepOrange, width: 2),
                      // No left and right border
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_rupee, color: Colors.white, size: 40),
                      SizedBox(height: 8),
                      Text(
                        "Expense Tracker Application",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "        Expense Tracker App is a Flutter-based application that helps users track and analyze their spending habits. \n     Users can input expenses across categories like food, college fees, movies, and more.\n      The app calculates and highlights where the most money is being spent\n      It features a clean UI with smart insights to improve personal budgeting. ",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                // dice roll app project details
                SizedBox(height: 10),
                Container(
                  height: 300,
                  width: 350,

                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.15),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      top: BorderSide(color: Colors.deepOrange, width: 2),
                      bottom: BorderSide(color: Colors.deepOrange, width: 2),
                      // No left and right border
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow, color: Colors.white, size: 40),
                      SizedBox(height: 8),
                      Text(
                        "Dice Roll Application",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "     Dice Roll App is a simple Flutter app that simulates the rolling of a dice with random outcomes. \n     Each tap generates a new dice face using built-in images or custom assets. \n    It's great for learning Flutter basics like state management and user interaction. ",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                // farmer app project details
                SizedBox(height: 10),
                Container(
                  height: 300,
                  width: 350,

                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.15),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      top: BorderSide(color: Colors.deepOrange, width: 2),
                      bottom: BorderSide(color: Colors.deepOrange, width: 2),
                      // No left and right border
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.agriculture, color: Colors.white, size: 40),
                      SizedBox(height: 8),
                      Text(
                        "Farmer Application",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "   Farmer Connect App is a Flutter-based platform that enables direct interaction between farmers (sellers) and customers. \n   The main goal is to eliminate intermediaries, ensuring better prices for farmers and fresh produce for consumers. \n   Users can list, browse, and negotiate agricultural products in a transparent marketplace.  ",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
