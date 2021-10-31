part of 'data_cubit.dart';

@immutable
abstract class DataState {
  const DataState();
}

class Datainitial extends DataState {
  const Datainitial();
}

class DataLoading extends DataState {
  const DataLoading();
}

class DataFailed extends DataState {
  final e;
  const DataFailed(this.e);
}

class DataLoaded extends DataState {
  final List<ExperienceModel> experiences;
  final List<ProjectModel> projects;
  final List<AboutMeModel> aboutMe;
  DataLoaded({
    required this.aboutMe,
    required this.experiences,
    required this.projects,
  });
}
