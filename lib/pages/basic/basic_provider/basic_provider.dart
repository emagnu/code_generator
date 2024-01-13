//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

//  Import FILES
//  PARTS
part 'basic_provider.g.dart';
//  PROVIDERS
// final helloProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     debugPrint('Disposing of [helloProvider]');
//   });
//   return 'Hello ';
// });
// final worldProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     debugPrint('Disposing of [worldProvider]');
//   });
//   return ' World';
// });

@Riverpod(keepAlive: true)
String hello(HelloRef ref) {
  ref.onDispose(() {
    debugPrint('Disposing of [HelloRef]');
  });
  return 'Hello';
}

@Riverpod(keepAlive: true)
String world(WorldRef ref) {
  ref.onDispose(() {
    debugPrint('Disposing of [WorldRef]');
  });
  return 'World';
}
//



