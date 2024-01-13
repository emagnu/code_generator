//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/basic/basic_provider/basic_provider.dart';
//  Import FILES
//  PARTS
//  PROVIDERS

//

// class BasicPage extends StatelessWidget {
class BasicPage extends ConsumerWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hello = ref.watch(helloProvider);
    final world = ref.watch(worldProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        ///  ---  Using a Consumer! ----
        // child: Consumer(
        //   builder: (context, ref, child) {
        //     final hello = ref.watch(helloProvider);
        //     final world = ref.watch(worldProvider);

        //     // return const Text('Provider');
        //     return Text(
        //       '$hello $world !',
        //       style: Theme.of(context).textTheme.headlineLarge,
        //     );
        //   },
        // ),
        ///  ---  Using a ConsumerWidget! ----
        // child: Text('Provider'),
        child: Text(
          '$hello $world !',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
