import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'xservice_method_channel.dart';

abstract class XservicePlatform extends PlatformInterface {
  /// Constructs a XservicePlatform.
  XservicePlatform() : super(token: _token);

  static final Object _token = Object();

  static XservicePlatform _instance = MethodChannelXservice();

  /// The default instance of [XservicePlatform] to use.
  ///
  /// Defaults to [MethodChannelXservice].
  static XservicePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XservicePlatform] when
  /// they register themselves.
  static set instance(XservicePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
