
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sift_loan/core/constants/string_const.dart';
import 'package:sift_loan/core/network/dio_callar.dart';
import 'package:sift_loan/core/network/domain/api_caller.dart';
import 'package:sift_loan/core/network/domain/inetwork_manager.dart';
import 'package:sift_loan/core/network/network_manager.dart';
import 'package:sift_loan/feature/auth/_auth_injection.dart';
import 'package:sift_loan/sift_main_app.dart';

final sl = GetIt.instance;

abstract class ServiceInjection {
  Future<void> register();
}

Future<void> _initInjection(
  List<ServiceInjection> services,
) async {
  for (var service in services) {
    await service.register();
  }

  final box = Hive.box<String>(StringConst.accessTokenBox);
  sl.registerLazySingleton<ApiCaller>(
    () => DioApiCaller(
      Dio(),
      authBox: box,
    ),
  );

  sl.registerLazySingleton<INetworkManager>(
    () => NetworkManagerImpl(
      Connectivity(),
    ),
  );
}

Future<void> initInjection({bool useMock = false}) async {
  if (useMock) {
    await _initMockInjections();
  } else {
    await _initRealInjection();
  }

  SiftLoankApp.isMock = useMock;
}

Future<void> _initRealInjection() async {
  await _initInjection(
    [

      // StartupInjection(),
      AuthenticationInjection(),
      // LandingPageInjection(),


 
    ],
  );
}

Future<void> _initMockInjections() async {
  await _initInjection(
    [
    
      // MockStartupInjection(),
      MockAuthenticationInjection(),
      // LandingPageInjection(),
    
    ],
  );
}
