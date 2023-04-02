import 'package:dio/dio.dart';
import 'package:os/const/server.dart';

class NetworkUtils {
  factory NetworkUtils() => _getInstance();

  static NetworkUtils? get instance => _getInstance();
  static NetworkUtils? _instance;

  late Dio _dio;

  NetworkUtils._internal() {
    init();
  }

  static NetworkUtils _getInstance() {
    _instance ??= NetworkUtils._internal();
    return _instance!;
  }

  void init() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: ServerConfig.host,
      connectTimeout: const Duration(milliseconds: 3000),
    );
    _dio = Dio(baseOptions);
  }

  Future<Response> get(String url, {String method = "get"}) async {
    Options options = Options(method: method);
    final result =
        await _dio.request(url, queryParameters: null, options: options);
    return result;
  }
}
