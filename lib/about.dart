import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@SSHegde.Visuals'),
        toolbarHeight: 70,
        centerTitle: true,
      ),
      body: Container(
          margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: const Column(children: [
            Text(
                "I am a mobile app developer with a passion for creating innovative applications that enhance user experiences. My expertise lies in developing intuitive interfaces and robust functionality, ensuring that each app meets the specific needs of users.\n\n"
                "In addition to app development, I enjoy sharing insights and knowledge related to technology and programming with others. This allows me to connect with like-minded individuals and contribute to the developer community.\n\n"
                "As a hobby photographer and videographer, I capture moments from my travels and adventures, especially in wildlife photography, showcasing nature's beauty.\n\n"
                "In my free time, I play volleyball and cricket, which keep me active and teach valuable teamwork skills. I am always learning and coding to improve my craft and explore new technologies.\n\n"
                "You can contact:"),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white70,
                  weight: 24,
                ),
                SizedBox(width: 4),
                Text('subrahmanyahegde460@gmail.com')
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/youtube.png'),
                  width: 24,
                  color: Colors.white70,
                ),
                SizedBox(width: 4),
                Text('https://youtube.com/@sshegde.visuals')
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/twitter.png'),
                  width: 24,
                  color: Colors.white70,
                ),
                SizedBox(width: 4),
                Text('https://x.com/SSHegdeVisuals')
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/ic_github.png'),
                  width: 24,
                  color: Colors.white70,
                ),
                SizedBox(width: 4),
                Text('https://github.com/subshegde')
              ],
            ),
          ])),
    );
  }
}
