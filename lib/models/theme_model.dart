import 'package:portfolio/app/app.dart';

class ThemeModel extends ChangeNotifier {
  late bool _isDark = false;
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
  }

  set isDark(bool value) {
    _isDark = value;
    notifyListeners();
  }
}
