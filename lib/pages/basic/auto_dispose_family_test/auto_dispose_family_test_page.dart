//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'auto_dispose_family_test_provider.dart';
// import 'counter.dart';
//  PARTS
//  PROVIDERS

//
// class AutoDisposeFamilyPage extends StatelessWidget {
class AutoDisposeFamilyTestPage extends ConsumerStatefulWidget {
  const AutoDisposeFamilyTestPage({super.key});

  @override
  ConsumerState<AutoDisposeFamilyTestPage> createState() =>
      _AutoDisposeFamilyTestPageState();
}

class _AutoDisposeFamilyTestPageState
    extends ConsumerState<AutoDisposeFamilyTestPage> {
  String name = 'john';

  @override
  Widget build(BuildContext context) {
    final helloThere = ref.watch(autoDisposeFamilyTestHelloProvider(name));
    // final helloJane = ref.watch(autoDisposeFamilyTestHelloProvider('Jane'));

    // ref.watch(counterProvider(Counter(count: 0)));
    // ref.watch(counterProvider(Counter(count: 0)));

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
              // Text(helloJohn, style: Theme.of(context).textTheme.headlineLarge),
              Text(helloThere,
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 10.0),
              // Text(helloJane, style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 10.0),
              FilledButton(
                  onPressed: () {
                    setState(() {
                      name = name == 'john' ? 'jane' : 'john';
                    });
                  },
                  child: const Text(
                    'Change name',
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
