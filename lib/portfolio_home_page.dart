import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/bloc/project_state.dart';
import 'package:portfolio/services/mail_service.dart';
import 'package:portfolio/widgets/nav_text_button.dart';
import 'bloc/project_bloc.dart';
import 'widgets/section_title.dart';
import 'widgets/expandable_project_card.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFF0D0D0D),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ansh Bhardwaj',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      if (screenWidth > 600)
                        Row(
                          children: [
                            NavTextButton(
                              label: 'About',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AboutSection(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  FadeInDown(
                    child: Text(
                      'I build scalable\nmobile and web apps',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge!.copyWith(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  FadeInDown(
                    delay: const Duration(milliseconds: 300),
                    child: Text(
                      'Got an idea to work on and need help?\nBring your idea in descriptive documentation and I’ll make a scalable tech for you.',
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: Colors.grey[400]),
                    ),
                  ),
                  const SizedBox(height: 24),
                  FadeInUp(
                    delay: const Duration(milliseconds: 500),
                    child: ElevatedButton(
                      onPressed: () {
                        MailService.openMail(
                          'bhardwajansh1510@gmail.com',
                          'Let\'s Connect',
                          'Hi Ansh, I came across your portfolio and would love to talk...',
                        );
                      },

                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Get in touch'),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Header & Hero omitted for brevity
            const SectionTitle(title: 'Projects'),
            const SizedBox(height: 24),
            BlocBuilder<ProjectBloc, ProjectState>(
              builder: (context, state) {
                if (state is ProjectLoaded) {
                  return Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children:
                        state.projects
                            .map((p) => ExpandableProjectCard(project: p))
                            .toList(),
                  );
                }
                if (state is ProjectLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return const Center(child: Text('Failed to load projects'));
              },
            ),
            // Contact section omitted
            const SizedBox(height: 60),
            Container(
              color: const Color(0xFF1C1C1E),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
              child: FadeInUp(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Contact'),
                    const SizedBox(height: 12),
                    Text('Email: bhardwajansh1510@gmail.com'),
                    const SizedBox(height: 8),
                    Text('LinkedIn: linkedin.com/in/ansh-bhardwaj-27a22420b'),
                    const SizedBox(height: 8),
                    Text(
                      'GitHub: github.com/01000001x01001110x01010011x01001000',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
