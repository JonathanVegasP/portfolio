import 'package:portfolio/domain/interfaces/url_launcher_service.dart';

mixin UrlLauncherMixin {
  IUrlLauncherService get service;

  void whatsApp() => service.launch('https://wa.me/5511976591515');

  void gmail() => service.launch('mailto:jopxoto12@gmail.com');

  void helloWorldProject() => service.launch(
        'https://play.google.com/store/apps/details?id=com.jonathanvegasp.hello_world',
      );
}
