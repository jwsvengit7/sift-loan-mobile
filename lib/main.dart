import 'package:sift_loan/flavor.dart';
import 'package:sift_loan/sift_main_app.dart';

void main() {
  FlavorConfig.appFlavor = Flavor.dev;
  SiftLoankApp.boot();
}

