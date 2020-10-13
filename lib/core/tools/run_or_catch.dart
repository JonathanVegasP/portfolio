import 'package:portfolio/core/tools/debug.dart';

Future<T> runOrCatch<T>(Future<T> action()) async {
  try {
    return action();
  } catch (e, str) {
    if (debugMode) {
      print(e);
      print(str);
    }
  }
  return null;
}
