//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'family_provider.dart';
//  PARTS
//  PROVIDERS

//

// class FamilyPage extends StatelessWidget {
class FamilyPage extends ConsumerWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloJohn = ref.watch(familyHelloProvider('John'));
    final helloJane = ref.watch(familyHelloProvider('Jane'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyProvider'),
      ),
      body: Center(
        // child: Text('FamilyProvider'),
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
