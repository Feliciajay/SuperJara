import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

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
import 'package:superjara/members/user_settings/data/model/fetch_users_request.dart';
import 'package:superjara/members/user_settings/data/model/fetch_users_response.dart';

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
