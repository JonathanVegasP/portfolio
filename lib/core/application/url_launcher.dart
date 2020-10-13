import 'package:portfolio/domain/interfaces/url_launcher_repository.dart';
import 'package:portfolio/domain/interfaces/url_launcher_service.dart';

class UrlLauncherService implements IUrlLauncherService {
  final IUrlLauncherRepository _repository;

  const UrlLauncherService(this._repository);

  @override
  Future<bool> launch(String url) async {
    final result = await _repository.canLaunchUrl(url);
    if (!result) return result;
    return _repository.launchUrl(url);
  }
}
