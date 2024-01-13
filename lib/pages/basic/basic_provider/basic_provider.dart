//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//  Import FILES
//  PARTS
//  PROVIDERS
final helloProvider = Provider<String>((ref) {
  ref.onDispose(() {
    debugPrint('Disposing of [helloProvider]');
  });
  return 'Hello ';
});
final worldProvider = Provider<String>((ref) {
  ref.onDispose(() {
    debugPrint('Disposing of [worldProvider]');
  });
  return ' World';
});

//



