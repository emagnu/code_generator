//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//  Import FILES
//  PARTS
//  PROVIDERS
final autoDisposeHelloProvider = Provider.autoDispose<String>((ref) {
  debugPrint('[autoDisposeHelloProvider] has been created');
  ref.onDispose(() {
    debugPrint('Disposing of [autoDisposeHelloProvider]');
  });
  return 'Hello ';
});
//

