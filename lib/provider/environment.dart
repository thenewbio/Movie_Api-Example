import 'package:hooks_riverpod/hooks_riverpod.dart';

class EnvironmentConfig {
  final movieApiKey = 'c2151f23cc2be082d3d302a4d4de898b';
}

final provider = Provider<EnvironmentConfig>((ref) {
  return EnvironmentConfig();
});
