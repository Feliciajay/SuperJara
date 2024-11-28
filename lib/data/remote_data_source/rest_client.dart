import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:superjara/api/api_connect/data/model/api_request.dart';
import 'package:superjara/api/api_connect/data/model/api_response.dart';

import 'package:superjara/core/config/env/base_env.dart';
import 'package:superjara/core/config/env/prod_env.dart';
import 'package:superjara/core/interceptor/header_interceptor.dart';
import 'package:superjara/data/local_data_storage.dart';
import 'package:superjara/home/count_managers/data/model/count_manager_request.dart';
import 'package:superjara/home/count_managers/data/model/count_manager_response.dart';
import 'package:superjara/home/count_transaction/model/count_transaction_request.dart';
import 'package:superjara/home/count_transaction/model/count_transaction_response.dart';
import 'package:superjara/home/data/model/count_member_request.dart';
import 'package:superjara/home/data/model/count_member_response.dart';
import 'package:superjara/members/change_plan_users/change_user_password/model/change_user_password_request.dart';
import 'package:superjara/members/change_plan_users/change_user_password/model/change_user_password_response.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_request.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_response.dart';
import 'package:superjara/members/change_user_plan/model/change_user_plan_request.dart';
import 'package:superjara/members/change_user_plan/model/change_user_plan_response.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details.response.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details_request.dart';
import 'package:superjara/members/settings/data/model/get_manager_role_request.dart';
import 'package:superjara/members/settings/data/model/get_manager_role_response.dart';
import 'package:superjara/members/settings/data/model/set_manager_role_request.dart';
import 'package:superjara/members/settings/data/model/set_manager_role_response.dart';
import 'package:superjara/members/settings/set_atm_role/model/get_atm_role_reponse.dart';
import 'package:superjara/members/settings/set_atm_role/model/get_atm_role_request.dart';
import 'package:superjara/members/settings/set_atm_role/model/set_atm_role_request.dart';
import 'package:superjara/members/settings/set_atm_role/model/set_atm_role_response.dart';
import 'package:superjara/members/settings/set_user_access_status/model/get_user_access_status_reponse.dart';
import 'package:superjara/members/settings/set_user_access_status/model/get_user_access_status_request.dart';
import 'package:superjara/members/settings/set_user_access_status/model/set_user_access_status_reponse.dart';
import 'package:superjara/members/settings/set_user_access_status/model/set_user_access_status_request.dart';
import 'package:superjara/members/user_settings/data/model/fetch_users_request.dart';
import 'package:superjara/members/user_settings/data/model/fetch_users_response.dart';
import 'package:superjara/messaging/mtn_share/average_sales/model/average_sales_request.dart';
import 'package:superjara/messaging/mtn_share/average_sales/model/average_sales_response.dart';
import 'package:superjara/messaging/mtn_share/data/model/total_mtn_sims_request.dart';
import 'package:superjara/messaging/mtn_share/data/model/total_mtn_sims_response.dart';
import 'package:superjara/messaging/mtn_share/today_sales/model/today_sales_request.dart';
import 'package:superjara/messaging/mtn_share/today_sales/model/today_sales_response.dart';
import 'package:superjara/messaging/mtn_share/total_sims_left/model/total_sims_left_request.dart';
import 'package:superjara/messaging/mtn_share/total_sims_left/model/total_sims_left_response.dart';
import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transaction_request.dart';
import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transation_response.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('autobiz_admin.php')
  Future<CountMemberResponse> countMemberRequest(
    @Body() CountMemberRequest request,
  );

  @POST('autobiz_admin.php')
  Future<CountManagerResponse> countManagerRequest(
    @Body() CountManagerRequest request,
  );

  @POST('autobiz_admin.php')
  Future<CountTransactionResponse> countTransactionRequest(
    @Body() CountTransactionRequest request,
  );

  @POST('autobiz_admin.php')
  Future<FetchUsersResponse> fetchUserRequest(
    @Body() FetchUserRequest request,
  );

  @POST('autobiz_admin.php')
  Future<FetchUserDetailsResponse> fetchUserDetailsRequest(
    @Body() FetchUserDetailsRequest request,
  );

  @POST('autobiz_admin.php')
  Future<SetManagerRoleResponse> setManagerRoleRequest(
    @Body() SetManagerRoleRequest request,
  );

  @POST('autobiz_admin.php')
  Future<GetManagerRoleResponse> getManagerRoleRequest(
    @Body() GetManagerRoleRequest request,
  );

  @POST('autobiz_admin.php')
  Future<ChangeUserPlanResponse> changeUserPlanRequest(
    @Body() ChangeUserPlanRequest request,
  );

  @POST('autobiz_admin.php')
  Future<ChangeUserPasswordResponse> changeUserPasswordRequest(
    @Body() ChangeUserPasswordRequest request,
  );

  @POST('autobiz_admin.php')
  Future<PaymentGatewayResponse> paymentGatewayRequest(
    @Body() PaymentGatewayRequest request,
  );

  @POST('autobiz_admin.php')
  Future<ApiResponse> apiRequest(
    @Body() ApiRequest request,
  );

  @POST('autobiz_admin.php')
  Future<TotalMtnSimsResponse> totalMtnSimsRequest(
    @Body() TotalMtnSimsRequest request,
  );

  @POST('autobiz_admin.php')
  Future<AverageSalesResponse> averageSalesRequest(
    @Body() AverageSalesRequest request,
  );

  @POST('autobiz_admin.php')
  Future<TotalSimsLeftResponse> totalSimsLeftRequest(
    @Body() TotalSimsLeftRequest request,
  );

  @POST('autobiz_admin.php')
  Future<TodaySalesResponse> todaySalesRequest(
    @Body() TodaySalesRequest request,
  );

  @POST('autobiz_admin.php')
  Future<MtnShareTransactionResponse> mtnShareTransactionRequest(
    @Body() MtnShareTransactionRequest request,
  );

  @POST('autobiz_admin.php')
  Future<SetAtmRoleResponse> setAtmRoleRequest(
    @Body() SetAtmRoleRequest request,
  );

  @POST('autobiz_admin.php')
  Future<GetAtmRoleResponse> getAtmRoleRequest(
    @Body() GetAtmRoleRequest request,
  );

  @POST('autobiz_admin.php')
  Future<SetUserAccessStatusResponse> setUserAccessStatusRequest(
    @Body() SetUserAccessStatusRequest request,
  );

  @POST('autobiz_admin.php')
  Future<GetUserAccessStatusResponse> getUserAccessStatusRequest(
    @Body() GetUserAccessStatusRequest request,
  );
}

ProviderFamily<Dio, BaseEnv> _dio = Provider.family<Dio, BaseEnv>(
  (ref, env) {
    final dio = Dio();
    dio.options.baseUrl = 'https://demo.autobiz.app/';
    // dio.options.baseUrl = 'https://abakon.onrender.com/api/users';

    dio.options.headers = {
      'Content-Type': 'application/json',

      // 'Authorization': 'Bearer ${ref.read(tokenProvider)}',
      // 'accept': 'application/json',
    };

    dio.interceptors.add(
      HeaderInterCeptor(
        dio: dio,
        secureStorage: ref.read(localStorageProvider),
        // onTokenExpired: () {
        //ref.read(logoutProvider.notifier).state = ActivityStatus.loggedOut;
        // },
      ),
    );
    return dio;
  },
);

final restClientProvider = Provider((_) {
  final env = switch (F.appFlavor) {
    Flavor.prod => ProdEnv(),
    // Flavor.staging => StagingEnv(),
    //Flavor.dev => DevEnv(),
  };
  return RestClient(_.read(_dio.call(env)));
});
