// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:fwc_album_app/app/core/ui/global/global_context.dart';
import 'package:fwc_album_app/app/repository/auth_repository.dart';

class GlobalContextImpl implements GlobalContext {
  final GlobalKey<NavigatorState> navigatorKey;
  final AuthRepository authRepository;

  GlobalContextImpl({
    required this.navigatorKey,
    required this.authRepository,
  });

  @override
  Future<void> loginExpire() {
    throw UnimplementedError();
  }
}
