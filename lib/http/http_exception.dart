import 'dart:io';

import 'package:dio/dio.dart';

/// @class : HttpException
/// @name : jhf
/// @description :错误信息处理
class HttpException {
  static const int success = 200;
  static const int successNotContent = 204;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;

  static const netError = 1000;
  static const int parseError = 1001;
  static const int socketError = 1002;
  static const int httpError = 1003;
  static const int timeoutError = 1004;
  static const int cancelError = 1005;
  static const int unknownError = 9999;

  ///错误信息处理
  ///[error] 错误信息类型
  static NetError handleException(DioError error) {
    if (error is DioError) {
      if (error.type == DioErrorType.response) {
        dynamic e = error.message;
        if (e is SocketException) {
          return NetError(socketError, '网络异常，请检查你的网络！');
        }
        if (e is HttpException) {
          return NetError(httpError, '服务器异常！');
        }
        if (e is FormatException) {
          return NetError(parseError, '数据解析错误！');
        }
        return NetError(netError, '网络异常，请检查你的网络！');
      } else if (error.type == DioErrorType.connectTimeout ||
          error.type == DioErrorType.receiveTimeout) {
        ///  连接超时 || 请求超时 || 响应超时
        return NetError(timeoutError, '连接超时！');
      } else if (error.type == DioErrorType.cancel) {
        return NetError(cancelError, '取消请求');
      } else {
        return NetError(unknownError, '未知异常');
      }
    } else {
      return NetError(unknownError, '未知异常');
    }
  }

}

class NetError {
  int code;
  String msg;

  NetError(this.code, this.msg);
}