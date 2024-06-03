import 'package:flutter/material.dart';
import 'package:sift_loan/core/colors/color.dart';

class SiftLoanTheme {
  static ThemeData getLightThemeData(BuildContext context) {
    return _lightThemeData(context);
  }

  static ThemeData getDarkThemeData(BuildContext context) {
    return _darkThemeData(context);
  }

  static ThemeData _lightThemeData(BuildContext context) {
    return ThemeData(
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: Theme.of(context).dropdownMenuTheme.menuStyle?.copyWith(
                  elevation: MaterialStatePropertyAll(0.0),
                  backgroundColor: const MaterialStatePropertyAll(
                      SiftLoanColors.scaffoldBackgroundColor),
                ),
          ),
      dialogBackgroundColor: SiftLoanColors.scaffoldBackgroundColor,
      appBarTheme: Theme.of(context).appBarTheme.copyWith(elevation: 0.0),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      // fontFamily: "Effra_Trial",
      scaffoldBackgroundColor: SiftLoanColors.scaffoldBackgroundColor,
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
    );
  }

  static ThemeData _darkThemeData(BuildContext context) {
    return ThemeData(
      dropdownMenuTheme: Theme.of(context).dropdownMenuTheme.copyWith(
            menuStyle: Theme.of(context).dropdownMenuTheme.menuStyle?.copyWith(
                  elevation: MaterialStatePropertyAll(0.0),
                  backgroundColor: const MaterialStatePropertyAll(
                      SiftLoanColors.scaffoldBackgroundColor),
                ),
          ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      dialogBackgroundColor: SiftLoanColors.scaffoldBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
      scaffoldBackgroundColor: SiftLoanColors.scaffoldBackgroundColor,
      // fontFamily: "Effra_Trial",
      platform: TargetPlatform.iOS,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
    );
  }
}
