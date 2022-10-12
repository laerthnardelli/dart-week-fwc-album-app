import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter.dart';
import 'package:fwc_album_app/app/pages/splash/view/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPresenterImpl implements SplashPresenter {
  @override
  Future<void> checkLogin() async {
    _view.showLoader();

    final sp = await SharedPreferences.getInstance();
    final accessToken = sp.getString('accessToken');

    _view.logged(accessToken != null);
  }

  late final SplashView _view;

  @override
  set view(view) => _view = view;
}


    //   if (accessToken != null) {
    //     _view.logged(true);
    //   } else {
    //     _view.logged(false);
    //   }


// import 'package:fwc_album_app/app/pages/splash/presenter/splash_presenter.dart';
// import 'package:fwc_album_app/app/pages/splash/view/splash_view.dart';

// class SplashPresenterImpl implements SplashPresenter {
//   @override
//   Future<void> checkLogin() async {
//     _view.showLoader();
//     await Future.delayed(const Duration(seconds: 2));
//     _view.logged(true);
//   }

//   late final SplashView _view;

//   @override
//   set view(view) => _view = view;
// }
