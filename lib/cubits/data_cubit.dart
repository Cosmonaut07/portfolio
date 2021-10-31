import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/models/about_me_model.dart';
import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/services/providers/about_me_provider.dart';
import 'package:portfolio/services/providers/experience_provider.dart';
import 'package:portfolio/services/providers/project_provider.dart';

part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(Datainitial()) {
    appInit();
  }

  void appInit() async {
    emit(DataLoading());
    //get all necessary data
    try {
      final List<ExperienceModel> experiences =
          await ExperienceProvider().getExperiences();
      print(experiences);
      final List<ProjectModel> projects = await ProjectProvider().getProjects();
      print(projects);
      final List<AboutMeModel> aboutMe = await AboutMeProvider().getAboutMe();
      print(aboutMe);

      emit(DataLoaded(
          aboutMe: aboutMe, experiences: experiences, projects: projects));
    } catch (e) {
      print(e);
      emit(DataFailed(e));
    }
  }
}
