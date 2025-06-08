import 'package:flutter/material.dart';
import '../models/project.dart';

class ExpandableProjectCard extends StatefulWidget {
  final Project project;
  const ExpandableProjectCard({required this.project, super.key});

  @override
  State<ExpandableProjectCard> createState() => _ExpandableProjectCardState();
}

class _ExpandableProjectCardState extends State<ExpandableProjectCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.9,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.project.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            expanded
                ? widget.project.fullDescription
                : widget.project.shortDescription,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            children:
                widget.project.techStack.map((tech) {
                  return Chip(label: Text(tech));
                }).toList(),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () => setState(() => expanded = !expanded),
            child: Text(
              expanded ? 'Show less' : 'Show more',
              style: const TextStyle(color: Colors.deepOrangeAccent),
            ),
          ),
        ],
      ),
    );
  }
}
