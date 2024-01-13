//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'auto_dispose_provider.dart';
//  PARTS
//  PROVIDERS

//

class AutoDisposePage extends ConsumerWidget {
  const AutoDisposePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hello = ref.watch(autoDisposeHelloProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeProvider'),
      ),
      body: Center(
        child: Text(
          hello,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        // child: Text('AutoDisposeProvider'),
      ),
    );
  }
}
