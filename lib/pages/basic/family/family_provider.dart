//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//  Import FILES
//  PARTS
//  PROVIDERS
final familyHelloProvider = Provider.family<String, String>((ref, name) {
  debugPrint('[familyHelloProvider] has been created');
  ref.onDispose(() {
    debugPrint('Disposing of [familyHelloProvider($name)]');
  });
  return 'Hello $name';
});
//


