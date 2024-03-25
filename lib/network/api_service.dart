import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shwe_kabaw/network/model/task_model.dart';

part 'api_service.g.dart';

class Apis{
  static const String photos = '/photos';
}

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")

abstract class ApiService{
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return ApiService(dio);
  }

  @GET(Apis.photos)
  Future<List<TaskModel>> getTasks();
}
