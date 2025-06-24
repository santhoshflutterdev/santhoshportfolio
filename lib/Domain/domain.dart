import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:santhosh_portfolio/About/aboutme.dart';
import 'package:santhosh_portfolio/project/project.dart';
import 'package:santhosh_portfolio/resume_viewer.dart';
import 'package:santhosh_portfolio/skills/skills.dart';
import 'package:santhosh_portfolio/contact/contact_me.dart';

import 'package:url_launcher/url_launcher.dart';

class Domain extends StatefulWidget {
  const Domain({super.key});

  @override
  State<Domain> createState() => _DomainState();
}

void _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.platformDefault)) {
    throw 'Could not launch $url';
  }
}

class _DomainState extends State<Domain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        backgroundColor: Color.fromARGB(200, 10, 25, 49),

        // backgroundColor: Color.fromARGB(255, 42, 190, 171,),
        appBar: AppBar(
          title: Text(
            "SANTHOSH PORTFOLIO",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              color: Colors.white,
            ),
          ),

          // Three dot menu colors and more
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                popupMenuTheme: PopupMenuThemeData(
                  color: Colors.transparent,
                  elevation: 0,
                ),
              ),
              child: PopupMenuButton<String>(
                icon: Icon(Icons.more_vert, color: Colors.white),

                // onSelected: (String value) {
                //   if (value == 'About Me') {
                //     Get.to(Aboutme());
                //   }
                // },

                // 3 dot popupmenu item
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: "About Me",
                    child: const Text(
                      'About Me',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Get.to(const Aboutme());
                    },
                  ),
                  PopupMenuItem<String>(
                    value: 'Skills',
                    child: const Text(
                      'Skills',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Get.to(Skills());
                    },
                  ),
                  PopupMenuItem<String>(
                    value: 'Project',
                    child: const Text(
                      'Project',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Get.to(const Project());
                    },
                  ),
                  PopupMenuItem<String>(
                    value: 'Contact me',
                    child: const Text(
                      'Contact',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Get.to(const ContactMePage());
                    },
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          // backgroundColor: Color.fromARGB(200, 10, 25, 49),
          elevation: 0,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Hello, I am",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Santhosh S",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "        I'm working as a Flutter-Developer. I enjoy creating beautiful and responsive UI/UX design using flutter , and  managing statemanagement",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram),
                  color: Colors.orange,
                  onPressed: () {
                    _launchURL(
                      "https://www.instagram.com/gvprakash_updates/?hl=en",
                    );
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.linkedin),
                  color: Colors.orange,
                  onPressed: () {
                    _launchURL("www.linkedin.com/in/santhoshflutterdev ");
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.github),
                  color: Colors.orange,
                  onPressed: () {
                    _launchURL("https://github.com/santhoshflutterdev");
                  },
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const ResumeViewer());
              },
              child: Text(
                "Download Resume",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
