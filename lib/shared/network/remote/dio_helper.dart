import 'dart:ffi';
import 'package:dio/dio.dart';

class DiaHelper{
  static late Dio dio;
  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/' ,
        receiveDataWhenStatusError: true,
      ),
    );
  }
  static Future<Response?> getData({
    required String url,
    required Map<String,dynamic> query,
}) async{
    return await dio.get(url,queryParameters: query,);
  }
}