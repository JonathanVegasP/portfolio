import 'package:portfolio/core/tools/run_or_catch.dart';
import 'package:portfolio/domain/interfaces/url_launcher_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherRepository implements IUrlLauncherRepository {
  const UrlLauncherRepository();

  @override
  Future<bool> canLaunchUrl(String url) async {
    final result = await runOrCatch(() async => await canLaunch(url));
    return result ?? false;
  }

  @override
  Future<bool> launchUrl(String url) async {
    final result = await runOrCatch(() async => await launch(url));
    return result ?? false;
  }
}
