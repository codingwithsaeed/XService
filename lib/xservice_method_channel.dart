import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'xservice_platform_interface.dart';

/// An implementation of [XservicePlatform] that uses method channels.
class MethodChannelXservice extends XservicePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('xservice');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
