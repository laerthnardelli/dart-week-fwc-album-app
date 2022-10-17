import 'package:fwc_album_app/app/models/groups_stickers.dart';
import 'package:fwc_album_app/app/pages/my_stickers/view/my_stickers_view.dart';
import 'package:fwc_album_app/app/repository/stickers/stickers_repository.dart';

import 'my_stickers_presenter.dart';

class MyStickersPresenterImpl implements MyStickersPresenter {
  late final MyStickersView _view;

  final StickersRepository stickersRepository;

  var album = <GroupsStickers>[]; //cache to future filter

  var statusSelected = 'all';

  List<String>? countries;

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

  @override
  Future<void> statusFilter(String status) async {
    statusSelected = status;
    _view.updateStatusFilter(status);
  }

  @override
  void countryFilter(List<String>? countries) {
    this.countries = countries;
    if (countries == null) {
      //Atualizar a tela com todos os grupos
      _view.updateAlbum(album);
    } else {
      //Atualizar a minha lista filtrando os grupos selecionados!!!
      final albumFilter = [
        ...album.where((element) => countries.contains(element.countryCode))
      ];
      _view.updateAlbum(albumFilter);
    }
  }

  @override
  void refresh() async {
    _view.showLoader();
    await getMyAlbum();
    countryFilter(countries);
    statusFilter(statusSelected);
  }
}
