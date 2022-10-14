import 'package:fwc_album_app/app/models/groups_stickers.dart';
import 'package:fwc_album_app/app/pages/my_stickers/view/my_stickers_view.dart';
import 'package:fwc_album_app/app/repository/stickers/stickers_repository.dart';

import 'my_stickers_presenter.dart';

class MyStickersPresenterImpl implements MyStickersPresenter {
  late final MyStickersView _view;

  final StickersRepository stickersRepository;

  var album = <GroupsStickers>[]; //cache to future filter

  MyStickersPresenterImpl({required this.stickersRepository});

  @override
  Future<void> getMyAlbum() async {
    album = await stickersRepository.getMyAlbum();
    _view.loadPage([
      ...album
    ]); //load a copy of the album - keeping the state immutable from the original album
  }

  @override
  set view(MyStickersView view) => _view = view;
}
