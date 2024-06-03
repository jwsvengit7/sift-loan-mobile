import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sift_loan/core/appbar/appbar.dart';
import 'package:sift_loan/core/buttons/siftbuttons.dart';
import 'package:sift_loan/core/colors/color.dart';
import 'package:sift_loan/feature/startup/presentation/screens/onboarding_screen_three.dart';
import 'package:sift_loan/feature/startup/presentation/widgets/onboarding_background.dart';
import 'package:sift_loan/gen/assets.gen.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

 final  titleStyle = const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1,
        color: SiftLoanColors.blue1,
      );

  final  subtitleStyle = const TextStyle(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: SiftLoanColors.grey3,
      );

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
                appBar: const SiftLoanAppBar(shouldPop: true,),

        body: OnBoardingBackground(
                    color: SiftLoanColors.white,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    Assets.images.logoMain.path,
                    width: 400.w,
                    height: 150.h,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text("Your Digital Ecosystem", style: titleStyle),
                    Text("of Credit", style: titleStyle),
                    SizedBox(height: 20.h),
                    Text("Loans, Savings or Credit, we got you covered.", style: subtitleStyle),
                    Text("Live life, get things done.", style: subtitleStyle),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 229, 232, 235),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          Assets.images.img1.path,
                          width: MediaQuery.of(context).size.width,
                          height: 300.h,
                        ),
                      ),
                    ),
               
                    SiftLoanButtons(
                      context: context,
                      text: "Next",
                      color: SiftLoanColors.primaryOrange,
                      letterSpacing: 1,
                      onTap: () => Navigator.of(context).push(_createRoute()),
                    ).normal(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const OnboardingScreenThree(), 
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          
          child: child,
        );
      },
    );
  }
}


