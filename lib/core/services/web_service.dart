import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as web_service;

class TechWebService{
  TechWebService._();
  static Dio dio = Dio();

  static Future<dynamic>getRequest({required String url,Map<String,dynamic>? params}) async {
    return await dio.get(
        url,
        queryParameters:params,
      options: Options(responseType: ResponseType.json,method: 'GET')
    );
  }


  static Future<dynamic>postRequest({required String url,required Map<String,dynamic> data}) async {
    dio.options.headers['content-Type'] = 'application/json; charset=utf-8';
    return await dio.post(
        url,
        data: web_service.FormData.fromMap(data),
        options: Options(responseType: ResponseType.json,method: 'Post')
    );
  }



}