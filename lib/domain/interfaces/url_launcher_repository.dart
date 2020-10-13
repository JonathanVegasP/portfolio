abstract class IUrlLauncherRepository {
  Future<bool> launchUrl(String url);

  Future<bool> canLaunchUrl(String url);
}
