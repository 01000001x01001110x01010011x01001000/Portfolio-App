import 'package:equatable/equatable.dart';
import '../models/project.dart';

abstract class ProjectState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProjectLoading extends ProjectState {}

class ProjectLoaded extends ProjectState {
  final List<Project> projects;
  ProjectLoaded(this.projects);
  @override
  List<Object?> get props => [projects];
}

class ProjectError extends ProjectState {}