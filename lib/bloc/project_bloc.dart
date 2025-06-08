import 'package:flutter_bloc/flutter_bloc.dart';
import 'project_event.dart';
import 'project_state.dart';
import '../models/project.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc() : super(ProjectLoading()) {
    on<LoadProjects>((event, emit) {
      // In real use, fetch from API or local JSON
      // ...existing code...
      final projects = <Project>[
        Project(
          title: 'Samarth Care & Privilege',
          shortDescription:
              'Senior care app with modules and Firebase integration.',
          fullDescription:
              'Developed a Flutter-based mobile application offering health and lifestyle services to elderly users. Integrated local database with remote sync, background tasks with WorkManager, and Firebase Cloud Messaging. Improved UX by designing intuitive and accessible UI.',
          techStack: ['Flutter', 'Firebase', 'MVVM', 'WorkManager', 'Hive'],
        ),
        Project(
          title: 'Family Pro Health',
          shortDescription: 'Biometric tracker with offline-first UX.',
          fullDescription:
              'Built a Flutter app for biometric tracking devices used in remote areas. Integrated Bluetooth LE for device communication, implemented offline storage using SQLite, and designed a robust retry-queue mechanism for sync. Implemented Bloc for scalable state management.',
          techStack: ['Flutter', 'Bloc', 'Bluetooth', 'SQLite', 'REST API'],
        ),
        Project(
          title: 'Smart Cosmos',
          shortDescription: 'Barcode/QR tracking & delivery app.',
          fullDescription:
              'Developed Android & Flutter apps for real-time package tracking using QR/barcode scanning. Integrated MongoDB backend with sync capabilities. Used GPS for geofencing and improved delivery accuracy by 23%. Designed UI/UX optimized for field agents.',
          techStack: ['Flutter', 'MongoDB', 'GPS', 'REST API', 'Camera'],
        ),
        Project(
          title: 'PMS (Project Management System)',
          shortDescription:
              'An internal app to manage resources and project workflows.',
          fullDescription:
              'A robust Flutter-based project management system to track and manage workflows, allocate resources, handle tickets and sprints, and monitor employee productivity. Included daily task planning, timesheet tracking, employee records (personal & professional), and integrated an LLM-based assistant with text-to-speech navigation.',
          techStack: ['Flutter', 'Hive', 'LLM', 'TTS', 'REST API'],
        ),
      ];
      // ...existing code...
      emit(ProjectLoaded(projects));
    });
  }
}
