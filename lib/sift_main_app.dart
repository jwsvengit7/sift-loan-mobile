import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:sift_loan/feature/auth/api/authentication_api.dart';
import 'package:sift_loan/feature/auth/presentation/bloc/authentication_bloc.dart';
import 'package:sift_loan/core/constants/string_const.dart';
import 'package:sift_loan/core/extensions/logger_extension.dart';
import 'package:sift_loan/core/injection.dart';
import 'package:sift_loan/core/router/app_routes.dart';
import 'package:sift_loan/core/theme/sift_loan_theme.dart';
import 'package:sift_loan/feature/startup/presentation/bloc/startup_bloc.dart';
import 'package:sift_loan/flavor.dart';


class SiftLoankApp {
  const SiftLoankApp._();

  static bool isMock = true;

  static bool isProd = FlavorConfig.appFlavor == Flavor.prod;

  static boot() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _initHive();

    await initInjection(useMock: isMock);

    // await SystemChrome.setPreferredOrientations(
    //   [
    //     DeviceOrientation.landscapeLeft,
    //     DeviceOrientation.landscapeRight,
    //   ],
    // );



    runApp(
      const RootRestorationScope(
        restorationId: "root",
        child: ProviderScope(child: MyApp()),
      ),
    );
  }

  static Future<void> _initHive() async {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    await Hive.openBox<String>(StringConst.accessTokenBox);
    await Hive.openBox<bool>(StringConst.obscureBalanceBox);
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Timer? _timer;

  AuthenticationApi get _authenticationApi => sl<AuthenticationApi>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StartupBloc>(
          create: (_) => sl<StartupBloc>(),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (_) => sl<AuthenticationBloc>(),
        ),
      
      
      ],
      child: ScreenUtilInit(
          designSize: const Size(1440, 960),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return Listener(
              onPointerDown: (_) => _handlePointerDown(context),
              child:  MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  backButtonDispatcher: RootBackButtonDispatcher(),
                  theme: SchedulerBinding
                              .instance.platformDispatcher.platformBrightness ==
                          Brightness.dark
                      ? SiftLoanTheme.getDarkThemeData(context)
                      : SiftLoanTheme.getLightThemeData(context),
                  title: StringConst.appName,
                  routerDelegate: router.routerDelegate,
                  routeInformationParser: router.routeInformationParser,
                  routeInformationProvider: router.routeInformationProvider,
                  // home: const CustomEntry(),
                ),
            
            );
          }),
    );
  }

  void _initializeTimer() {
    "Initializing timer...".log();
    _cancelTimer();
  
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }



  void _handlePointerDown(BuildContext context) {
  }

}
