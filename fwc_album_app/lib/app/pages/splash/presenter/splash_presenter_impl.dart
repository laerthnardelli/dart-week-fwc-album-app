import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter.dart';
import 'package:fwc_album_app/app/pages/splash/view/splash_view.dart';

class SplashPresenterImpl implements SplashPresenter {
  @override
  Future<void> checkLogin() async {
    _view.showLoader();
    await Future.delayed(const Duration(seconds: 2));
    _view.logged(false);
  }

  late final SplashView _view;

  @override
  set view(view) => _view = view;
}
