import 'package:hooks_riverpod/hooks_riverpod.dart';

final userAssetsProvider = StateProvider<String>((ref) => 'bitcoin,ethereum,litecoin');