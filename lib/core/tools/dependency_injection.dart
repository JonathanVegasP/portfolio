import 'package:flutter_tools/flutter_tools.dart';
import 'package:portfolio/core/application/url_launcher.dart';
import 'package:portfolio/domain/interfaces/url_launcher_repository.dart';
import 'package:portfolio/domain/interfaces/url_launcher_service.dart';
import 'package:portfolio/infrastructure/repositories/url_launcher.dart';

final service = Injector();

Future<Null> initDependencies() async {
  service.putLazy<IUrlLauncherService>(() => UrlLauncherService(service()));
  service.putLazy<IUrlLauncherRepository>(() => const UrlLauncherRepository());
}
