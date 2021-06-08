// Copyright (c) 2021, Prime Holding JSC
// https://www.primeholding.com
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:dio/dio.dart';
import '../../../common_use_cases/fetch_new_access_token_use_case.dart';
import '../../../common_use_cases/logout_use_case.dart';
import '../../../repositories/auth_repository.dart';

/// Interceptors are a simple way to intercept and modify http requests globally
/// before they are sent to the server. That allows us to configure
/// authentication tokens, add logs of the requests,
/// add custom headers and much more.
/// Interceptors can perform a variety of implicit tasks, from authentication
/// to logging, for every HTTP request/response. Without interception, we will
/// have to implement these tasks explicitly for each HttpClient method call.
/// The AuthInterceptor will inject a Token in headers.
/// This will allow us to remain logged in on the server side or check
/// if the token exists and allow further REST api calls.
/// Here is an example of AuthInterceptor. You have to implement
/// your own logic, regarding needs of your application.
class AuthInterceptor extends Interceptor {
  AuthInterceptor(
    this._authRepository,
    this._logoutUseCase,
    this._fetchNewAccessTokenUseCase,
  );

  final LogoutUseCase _logoutUseCase;
  final AuthRepository _authRepository;
  final fetchNewAccessTokenUseCase _fetchNewAccessTokenUseCase;
  final Dio _httpClient = Dio();

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await getToken();
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final newToken = await _fetchNewAccessTokenUseCase.execute();
      if (newToken == null) {
        await _logoutUseCase.execute();
      }else {
        _httpClient.options
          ..headers['Authorization'] = 'Bearer $newToken'
          ..baseUrl = err.requestOptions.baseUrl
          ..method = err.requestOptions.method
          ..queryParameters = err.requestOptions.queryParameters
          ..extra = err.requestOptions.extra
          ..responseType = err.requestOptions.responseType
          ..connectTimeout = err.requestOptions.connectTimeout
          ..receiveTimeout = err.requestOptions.receiveTimeout;
        handler.resolve(await _httpClient.request(
          err.requestOptions.path,
          cancelToken: err.requestOptions.cancelToken,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
          onReceiveProgress: err.requestOptions.onReceiveProgress,
          onSendProgress: err.requestOptions.onSendProgress,
        ));
      }
    }
    super.onError(err, handler);
  }

  Future<String?> getToken() async => _authRepository.getToken();
}
