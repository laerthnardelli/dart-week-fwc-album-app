import 'package:flutter/material.dart';

import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';

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
              style: ButtonStyles.i.yellowButton,
              onPressed: () {},
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              style: ButtonStyles.i.yellowOutlineButton,
              onPressed: () {},
              child: const Text('Salvar'),
            ),
            ElevatedButton(
              style: ButtonStyles.i.primaryButton,
              onPressed: () {},
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              style: ButtonStyles.i.primaryOutlineButton,
              onPressed: () {},
              child: const Text('Salvar'),
            ),
            const TextField(),
            Button(
              onPressed: () {},
              style: ButtonStyles.i.yellowButton,
              labelStyle: TextStyles.i.textPrimaryFontBold,
              label: 'Salvar',
            ),
            Button.primary(
              onPressed: () {},
              label: 'Salvar',
            )
          ],
        ),
      ),
    );
  }
}
