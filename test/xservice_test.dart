import 'package:flutter_test/flutter_test.dart';
import 'package:xservice/xservice.dart';
import 'package:xservice/xservice_platform_interface.dart';
import 'package:xservice/xservice_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockXservicePlatform 
    with MockPlatformInterfaceMixin
    implements XservicePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final XservicePlatform initialPlatform = XservicePlatform.instance;

  test('$MethodChannelXservice is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelXservice>());
  });

  test('getPlatformVersion', () async {
    Xservice xservicePlugin = Xservice();
    MockXservicePlatform fakePlatform = MockXservicePlatform();
    XservicePlatform.instance = fakePlatform;
  
    expect(await xservicePlugin.getPlatformVersion(), '42');
  });
}
