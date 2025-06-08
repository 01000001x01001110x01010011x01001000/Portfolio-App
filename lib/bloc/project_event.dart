import 'package:equatable/equatable.dart';

abstract class ProjectEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadProjects extends ProjectEvent {}