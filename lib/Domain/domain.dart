import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:santhosh_portfolio/About/aboutme.dart';
import 'package:santhosh_portfolio/contact/contact_me.dart';
import 'package:santhosh_portfolio/project/project.dart';
import 'package:santhosh_portfolio/resume_viewer.dart';
import 'package:santhosh_portfolio/skills/skills.dart';
import 'package:url_launcher/url_launcher.dart';

class Domain extends StatelessWidget {
  const Domain({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url.startsWith('http') ? url : 'https://$url');
    if (!await launchUrl(uri, mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 10, 25, 49),
      appBar: AppBar(
        title: const Text(
          "SANTHOSH PORTFOLIO",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (String value) {
              switch (value) {
                case 'About Me':
                  Get.to(() => const Aboutme());
                  break;
                case 'Skills':
                  Get.to(() =>  Skills());
                  break;
                case 'Project':
                  Get.to(() => const Project());
                  break;
                case 'Contact':
                  Get.to(() => const ContactMePage());
                  break;
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(value: 'About Me', child: Text('About Me')),
              const PopupMenuItem(value: 'Skills', child: Text('Skills')),
              const PopupMenuItem(value: 'Project', child: Text('Project')),
              const PopupMenuItem(value: 'Contact', child: Text('Contact')),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hello, I am",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Santhosh S",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "I'm working as a Flutter Developer. I enjoy creating beautiful and responsive UI/UX using Flutter, and managing state efficiently.",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram),
                      color: Colors.orange,
                      onPressed: () => _launchURL(
                        "https://www.instagram.com/gvprakash_updates/",
                      ),
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      color: Colors.orange,
                      onPressed: () => _launchURL(
                        "https://www.linkedin.com/in/santhoshflutterdev",
                      ),
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      color: Colors.orange,
                      onPressed: () => _launchURL(
                        "https://github.com/santhoshflutterdev",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextButton.icon(
                  onPressed: () => Get.to(() => const ResumeViewer()),
                  icon: const Icon(Icons.download, color: Colors.orange),
                  label: const Text(
                    "Download Resume",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
