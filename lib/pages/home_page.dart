//  //

//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../widgets/custom_button.dart';
import 'basic/auto_dispose/auto_dispose_page.dart';
import 'basic/auto_dispose_family/auto_dispose_family_page.dart';
import 'basic/auto_dispose_family_test/auto_dispose_family_test_page.dart';
import 'basic/basic_provider/basic_page.dart';
import 'basic/family/family_page.dart';
//  PARTS
//  PROVIDERS

//

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: const [
            CustomButton(
              title: 'Provider',
              child: BasicPage(),
            ),
            CustomButton(
              title: 'AutoDisposeProvider',
              child: AutoDisposePage(),
            ),
            CustomButton(
              title: 'FamilyProvider',
              child: FamilyPage(),
            ),
            CustomButton(
              title: 'AutoDisposeFamilyProvider',
              child: AutoDisposeFamilyPage(),
            ),
            CustomButton(
              title: 'AutoDisposeFamilyTestProvider',
              child: AutoDisposeFamilyTestPage(),
            ),
          ],
        ),
      ),
    );
  }
}
