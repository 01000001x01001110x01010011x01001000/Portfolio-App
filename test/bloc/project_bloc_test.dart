import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/bloc/project_bloc.dart';
import 'package:portfolio/bloc/project_event.dart';
import 'package:portfolio/bloc/project_state.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('ProjectBloc', () {
    blocTest<ProjectBloc, ProjectState>(
      'emits [ProjectLoading, ProjectLoaded] on LoadProjects',
      build: () => ProjectBloc(),
      act: (bloc) => bloc.add(LoadProjects()),
      expect: () => [isA<ProjectLoaded>()],
    );
  });
}