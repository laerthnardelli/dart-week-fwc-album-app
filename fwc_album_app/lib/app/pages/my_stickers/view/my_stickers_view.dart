import 'package:fwc_album_app/app/models/groups_stickers.dart';

abstract class MyStickersView {
  void loadPage(List<GroupsStickers> album);
  void error(String message);
}
