// Example About Section Widget
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(color: Colors.deepOrange),
            ),
            const SizedBox(height: 16),
            Text(
              "I'm a passionate Flutter Developer with nearly 3 years of experience building cross-platform mobile applications. I specialize in Flutter and Dart, with a strong foundation in Kotlin and Firebase. My apps have achieved over 10,000+ downloads, and I have a proven track record of delivering scalable, high-performance solutions.\n\n"
              "I am skilled in BLoC state management, UI/UX implementation, agile development, and performance optimization. I bring strong problem-solving skills, attention to detail, and the ability to collaborate effectively in agile teams. I'm also familiar with modern mobile development standards, technical architecture planning, and continuous integration practices.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(
              'Technical Skills',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Colors.deepOrange),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: "Languages & Frameworks: ",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: "Flutter (Dart), Kotlin, Java, BLoC Architecture\n",
                  ),
                  TextSpan(
                    text: "Tools & Platforms: ",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text:
                        "Firebase, REST APIs, Git, Bitbucket, Android Studio, VS Code, Jira\n",
                  ),
                  TextSpan(
                    text: "Databases: ",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: "Firebase Firestore, PostgreSQL, MongoDB\n",
                  ),
                  TextSpan(
                    text: "Testing & CI: ",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: "JUnit, Mockito, Continuous Integration (CI/CD)\n",
                  ),
                  TextSpan(
                    text: "Additional: ",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text:
                        "UI/UX Design, Software Engineering Principles, Agile Development, Technical Architecture, Version Control",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Awards & Recognition',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: Colors.deepOrange),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: "Cub of the Month –",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text:
                        " Recognized for outstanding Flutter project contributions at Innobit Systems Pvt. Ltd",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
