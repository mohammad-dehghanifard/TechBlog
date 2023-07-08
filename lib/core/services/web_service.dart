import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as web_service;
import 'package:flutter_techblog/core/constants/storage_keys/storage_keys.dart';
import 'package:get_storage/get_storage.dart';

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
    final storage = GetStorage();
    final token = storage.read(TechStorageKeys.tokenKey);
    if(token != null){
      dio.options.headers['authorization'] = '$token';
    }
    dio.options.headers['content-Type'] = 'application/json; charset=utf-8';
    return await dio.post(
        url,
        data: web_service.FormData.fromMap(data),
        options: Options(responseType: ResponseType.json,method: 'Post')
    );
  }



}