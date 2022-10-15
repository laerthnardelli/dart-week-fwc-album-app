import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/widgets/rounded_button.dart';

class StickerDetailPage extends StatelessWidget {
  const StickerDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/sticker_pb.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'BRA 13',
                      style: context.textStyles.textPrimaryFontBold.copyWith(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const Spacer(),
                  RoundedButton(
                    icon: Icons.remove,
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '1',
                      style: context.textStyles.textSecondaryFontMedium,
                    ),
                  ),
                  RoundedButton(
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text('Brasil',
                    style: context.textStyles.textPrimaryFontRegular),
              ),
              Button.primary(
                width: MediaQuery.of(context).size.width * 0.9,
                onPressed: () {},
                label: 'Adicionar figurinha',
              ),
              Button(
                width: MediaQuery.of(context).size.width * 0.9,
                onPressed: () {},
                label: 'Excluir figurinha',
                outline: true,
                style: context.buttonStyles.primaryOutlineButton,
                labelStyle:
                    context.textStyles.textSecondaryFontExtraBoldPrimaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
