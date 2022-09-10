
import 'xservice_platform_interface.dart';

class Xservice {
  Future<String?> getPlatformVersion() {
    return XservicePlatform.instance.getPlatformVersion();
  }
}
