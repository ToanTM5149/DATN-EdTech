import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../common/configs/constants/app_constants.dart';
import '../../../core/service/base_response/base_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  //-------------------- User API --------------------
  @GET('/users')
  Future<BaseResponse> getAllUsers();

  @POST('/users/create')
  Future<BaseResponse> createUser(@Body() Map<String, dynamic> body);

  @DELETE('/users/{id}')
  Future<BaseResponse> deleteUser(@Path("id") String userId);
}
