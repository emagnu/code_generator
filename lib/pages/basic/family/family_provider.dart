//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

//  Import FILES
//  PARTS
part 'family_provider.g.dart';

//  PROVIDERS
final familyHelloProvider = Provider.family<String, String>((ref, name) {
  debugPrint('[familyHelloProvider] has been created');
  ref.onDispose(() {
    debugPrint('Disposing of [familyHelloProvider($name)]');
  });
  return 'Hello $name';
});

@Riverpod(keepAlive: true)
String familyHello(FamilyHelloRef ref, {required String there}) {
  debugPrint('[familyHelloProvider] has been created');
  ref.onDispose(() {
    debugPrint('Disposing of [familyHelloProvider($there)]');
  });
  return 'Hello $there';
}
//


