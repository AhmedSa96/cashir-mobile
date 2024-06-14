import 'dart:convert';
import 'dart:io';
import 'package:cashir/modules/auth/models/auth_status.model.dart';
import 'package:cashir/shared/services/local_storage.service.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:dio/dio.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_utils/get_utils.dart';

import 'package:path_provider/path_provider.dart';

class AppResponse<T> {
  final int statusCode;
  final T data;

  AppResponse({
    required this.statusCode,
    required this.data,
  });
}

class HttpService {
  static const _defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  final _dio = Dio(
    BaseOptions(baseUrl: 'http://localhost:3000/api'),
  );

  Function? _onUnauthorized;

  void onUnauthorizedEvent(Function callback) {
    _onUnauthorized = callback;
  }

  Future<AppResponse<T>> get<T>({
    required String url,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    try {
      final res = await _dio.get(
        url,
        queryParameters: query,
        options: Options(headers: {
          ..._defaultHeaders,
          ...await _getAuthHeaders(),
          ...headers,
        }),
      );

      return AppResponse(
        statusCode: res.statusCode!,
        data: res.data,
      );
    } on DioException catch (_) {
      _onUnauthorized?.call();
    }

    return AppResponse(
        statusCode: 401,
        data:
            {"message": "your session is expired, please login".tr} as dynamic);
  }

  Future<AppResponse<T>> post<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    try {
      final res = await _dio.post(
        url,
        queryParameters: query,
        options: Options(headers: {
          ..._defaultHeaders,
          ...await _getAuthHeaders(),
          ...headers,
        }),
        data: body,
      );

      return AppResponse(
        statusCode: res.statusCode!,
        data: res.data,
      );
    } on DioException catch (_) {
      _onUnauthorized?.call();
    }

    return AppResponse(
        statusCode: 401,
        data:
            {"message": "your session is expired, please login".tr} as dynamic);
  }

  Future<AppResponse<T>> postFormData<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    try {
      prepareFormData(Map<String, dynamic> body) async {
        final Map<String, dynamic> newBody = {};

        for (var entity in body.entries) {
          if (entity.value is File) {
            newBody[entity.key] = await MultipartFile.fromFile(entity.value);
          } else if (entity.value is List<File>) {
          } else {
            newBody[entity.key] = entity.value;
          }
        }

        return newBody;
      }

      final newBody = await prepareFormData(body);

      final formData = FormData.fromMap(newBody);

      final res = await _dio.post(
        url,
        queryParameters: query,
        options: Options(headers: {
          ..._defaultHeaders,
          ...await _getAuthHeaders(),
          ...headers,
        }),
        data: formData,
      );

      return AppResponse(
        statusCode: res.statusCode!,
        data: res.data,
      );
    } on DioException catch (_) {
      _onUnauthorized?.call();
    }

    return AppResponse(
        statusCode: 401,
        data:
            {"message": "your session is expired, please login".tr} as dynamic);
  }

  Future<AppResponse<T>> put<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    try {
      final res = await _dio.put(
        url,
        queryParameters: query,
        options: Options(headers: {
          ..._defaultHeaders,
          ...await _getAuthHeaders(),
          ...headers,
        }),
        data: body,
      );

      return AppResponse(
        statusCode: res.statusCode!,
        data: res.data,
      );
    } on DioException catch (_) {
      _onUnauthorized?.call();
    }

    return AppResponse(
        statusCode: 401,
        data:
            {"message": "your session is expired, please login".tr} as dynamic);
  }

  Future<AppResponse<T>> patch<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    try {
      final res = await _dio.patch(
        url,
        queryParameters: query,
        options: Options(headers: {
          ..._defaultHeaders,
          ...await _getAuthHeaders(),
          ...headers,
        }),
        data: body,
      );

      return AppResponse(
        statusCode: res.statusCode!,
        data: res.data,
      );
    } on DioException catch (_) {
      _onUnauthorized?.call();
    }

    return AppResponse(
        statusCode: 401,
        data:
            {"message": "your session is expired, please login".tr} as dynamic);
  }

  Future<AppResponse<T>> delete<T>({
    required String url,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    try {
      final res = await _dio.delete(
        url,
        queryParameters: query,
        options: Options(headers: {
          ..._defaultHeaders,
          ...await _getAuthHeaders(),
          ...headers,
        }),
      );

      return AppResponse(
        statusCode: res.statusCode!,
        data: res.data,
      );
    } on DioException catch (_) {
      _onUnauthorized?.call();
    }

    return AppResponse(
        statusCode: 401,
        data:
            {"message": "your session is expired, please login".tr} as dynamic);
  }

  Future<void> download({
    required String url,
    required String fileName,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    try {
      final downloadesDirectory = await getApplicationDocumentsDirectory();

      final path = "${downloadesDirectory.path}/cashir/$fileName";
      final res = await _dio.download(
        url,
        path,
        queryParameters: query,
        options: Options(headers: {
          ..._defaultHeaders,
          ...await _getAuthHeaders(),
          ...headers,
        }),
      );

      if (res.statusCode != 200) throw Exception("Failed to download file");
    } on DioException catch (_) {
      _onUnauthorized?.call();
    } catch (_) {
      Get.find<ToastrService>().error("could not download file");
    }
  }

  Future<Map<String, String>> _getAuthHeaders() async {
    final localStorage = Get.find<LocalStorageService>();
    final authStatusJson = await localStorage.read("AUTH_STATUS");

    if (authStatusJson == null) return {};

    final authStatus = AuthStatus.fromJson(jsonDecode(authStatusJson));

    if (!authStatus.isLoggedIn) return {};

    return {"Authorization": "Bearer ${authStatus.token}"};
  }
}
