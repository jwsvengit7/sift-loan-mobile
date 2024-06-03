import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sift_loan/core/colors/color.dart';
import 'package:sift_loan/feature/startup/presentation/widgets/onboarding_background.dart';
import 'package:sift_loan/gen/assets.gen.dart';

class GetStatedScreen extends StatefulWidget {
  const GetStatedScreen({super.key});

  @override
  GetStatedScreenState createState() => GetStatedScreenState();
}

class GetStatedScreenState extends State<GetStatedScreen> {
  TextStyle get titleStyle => const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1,
        color: SiftLoanColors.white,
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
          body: OnBoardingBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 50,
              // color: Colors.red,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                                  Navigator.pop(context);

                        },
                        icon: const Row(
                          children: [
                            Icon(
                              Icons.chevron_left,
                              size: 35,
                              color: SiftLoanColors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Back',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: SiftLoanColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            Expanded(
              flex: 0,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Assets.images.logoMain.path,
                  width: 400.w,
                  height: 150.h,
                ),
              ),
            ),
            SizedBox(height: 250,)
,            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text("Your Gateway to Financial", style: titleStyle),
                  Text("Empowerment", style: titleStyle),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 80,
                    decoration: BoxDecoration(
                        color: SiftLoanColors.grey7,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 80,
                    decoration: BoxDecoration(
                        color: SiftLoanColors.grey7,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
