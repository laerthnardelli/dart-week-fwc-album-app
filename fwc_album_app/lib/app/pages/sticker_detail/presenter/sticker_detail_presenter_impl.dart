// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fwc_album_app/app/models/sticker_model.dart';
import 'package:fwc_album_app/app/models/user_sticker_model.dart';
import 'package:fwc_album_app/app/pages/sticker_detail/view/sticker_detail_view.dart';
import 'package:fwc_album_app/app/services/sticker/find_sticker_service.dart';

import 'sticker_detail_presenter.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {
  late final StickerDetailView _view;

  final FindStickerService findStickerService;

  StickerModel? sticker; //figurinha geral - album vazio
  UserStickerModel? stickerUser; //figurinha que eu tenho

  int amount = 0;

  StickerDetailPresenterImpl({
    required this.findStickerService,
  });

  @override
  set view(StickerDetailView view) => _view = view;

  @override
  Future<void> load(
      {required String countryCode,
      required String stickerNumber,
      required String countryName,
      UserStickerModel? stickerUser}) async {
    this.stickerUser = stickerUser;

    if (stickerUser == null) {
      sticker = await findStickerService.execute(countryCode, stickerNumber);
    }

    bool hasSticker = stickerUser != null;

    if (hasSticker) {
      //amount = stickerUser.duplicate == 0 ? 1 : stickerUser.duplicate + 1;
      amount = stickerUser.duplicate + 1;
    }

    _view.screenLoaded(
        hasSticker, countryCode, stickerNumber, countryName, amount);
  }

  @override
  void decrementAmount() {
    if (amount > 1) {
      _view.updateAmount(--amount);
    }
  }

  @override
  void incrementAmount() {
    _view.updateAmount(++amount);
  }
}
