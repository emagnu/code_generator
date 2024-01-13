//  //

//  Import LIBRARIES
import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS
part 'auto_dispose_provider.g.dart';

//  PROVIDERS
// final autoDisposeHelloProvider = Provider.autoDispose<String>((ref) {
// debugPrint('[autoDisposeHelloProvider] has been created');
// ref.onDispose(() {
//   debugPrint('Disposing of [autoDisposeHelloProvider]');
// });
//   return 'Hello ';
// });

@riverpod
String autoDisposeHello(AutoDisposeHelloRef ref) {
  debugPrint('[autoDisposeHelloProvider] has been created');
  ref.onDispose(() {
    debugPrint('Disposing of [autoDisposeHelloProvider]');
  });
  return 'Hello';
}
//

