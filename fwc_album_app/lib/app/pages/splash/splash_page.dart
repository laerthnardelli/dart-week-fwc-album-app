import 'package:flutter/material.dart';

import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashPage'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Salvar'),
              style: ButtonStyles.i.yellowButton,
              onPressed: () {},
            ),
            OutlinedButton(
              child: Text('Salvar'),
              style: ButtonStyles.i.yellowOutlineButton,
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text('Salvar'),
              style: ButtonStyles.i.primaryButton,
              onPressed: () {},
            ),
            OutlinedButton(
              child: Text('Salvar'),
              style: ButtonStyles.i.primaryOutlineButton,
              onPressed: () {},
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}
