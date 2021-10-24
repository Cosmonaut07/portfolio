import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial()) {
    appInit();
  }

  void appInit() async {
    emit(AppLoading());
    //Connection to firebase
    CollectionReference<Map<String, dynamic>> projects =
        FirebaseFirestore.instance.collection('projects');
    var data = await projects.get();
    print(data);
    emit(AppLoaded());
  }
}
