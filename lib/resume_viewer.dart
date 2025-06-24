import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:get/get.dart';

class ResumeViewer extends StatelessWidget {
  const ResumeViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Resume"),
        backgroundColor: Color.fromARGB(255, 10, 25, 49),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SfPdfViewer.asset('assets/images/SANTHOSH.resume.pdf'),
    );
  }
}
