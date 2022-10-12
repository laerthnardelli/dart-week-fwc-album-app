import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final sp = await SharedPreferences.getInstance();

    final accessToken = sp.getString('accessToken');
    options.headers['Authorization'] = 'Bearer $accessToken';
    handler.next(
        options); //ATENÇÃO - ESSA LINHA TEM QUE TER, CASO CONTRAIO AS REQUISIÇÕES SERÃO ABORTADAS
  }
}
