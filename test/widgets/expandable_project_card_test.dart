import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/expandable_project_card.dart';

void main() {
  testWidgets('ExpandableProjectCard toggles text', (tester) async {
    final project = Project(
      title: 'Test',
      shortDescription: 'Short',
      fullDescription: 'Full',
      techStack: ['A'],
    );
    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: ExpandableProjectCard(project: project))),
    );

    expect(find.text('Short'), findsOneWidget);
    await tester.tap(find.text('Show more'));
    await tester.pumpAndSettle();
    expect(find.text('Full'), findsOneWidget);
  });
}