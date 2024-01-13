//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import './counter.dart';

//  PARTS
//  PROVIDERS
final autoDisposeFamilyHelloProvider =
    Provider.autoDispose.family<String, String>((ref, name) {
  debugPrint('[autoDisposeFamilyHelloProvider] has been created');
  ref.onDispose(() {
    debugPrint('Disposing of [autoDisposeFamilyHelloProvider($name)]');
  });
  return 'Hello $name';
});

final counterProvider = Provider.autoDispose.family<int, Counter>((ref, c) {
  ref.onDispose(() {
    debugPrint('Disposing of [counterProvider($c)]');
  });
  return c.count;
});
//


