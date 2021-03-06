import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/models/about_me_model.dart';
import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/services/providers/about_me_provider.dart';
import 'package:portfolio/services/providers/experience_provider.dart';
import 'package:portfolio/services/providers/project_provider.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial()) {
    appInit();
  }

  void appInit() async {
    emit(AppLoading());
    //get all necessary data
    try {
      final List<ExperienceModel> experiences =
          await ExperienceProvider().getExperiences();
      final List<ProjectModel> projects = await ProjectProvider().getProjects();
      final List<AboutMeModel> aboutMe = await AboutMeProvider().getAboutMe();

      emit(AppLoaded(
          aboutMe: aboutMe, experiences: experiences, projects: projects));
    } catch (_) {
      emit(AppFailed());
    }
  }
}
