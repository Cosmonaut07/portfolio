part of 'app_cubit.dart';

@immutable
abstract class AppState {
  const AppState();
}

class AppInitial extends AppState {
  const AppInitial();
}

class AppLoading extends AppState {
  const AppLoading();
}

class AppFailed extends AppState {
  const AppFailed();
}

class AppLoaded extends AppState {}
