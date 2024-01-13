//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'auto_dispose_family_provider.dart';
import 'counter.dart';
//  PARTS
//  PROVIDERS

//
// class AutoDisposeFamilyPage extends StatelessWidget {
class AutoDisposeFamilyPage extends ConsumerWidget {
  const AutoDisposeFamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloJohn = ref.watch(autoDisposeFamilyHelloProvider('John'));
    final helloJane = ref.watch(autoDisposeFamilyHelloProvider('Jane'));

    ref.watch(counterProvider(Counter(count: 0)));
    ref.watch(counterProvider(Counter(count: 0)));

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyProvider'),
      ),
      body: Center(
        // child: Text('AutoDisposeFamilyProvider'),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(helloJohn, style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 10.0),
              Text(helloJane, style: Theme.of(context).textTheme.headlineLarge)
            ],
          ),
        ),
      ),
    );
  }
}
