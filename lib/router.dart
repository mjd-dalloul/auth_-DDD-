import 'package:auth/presentation/pages/sign_in_page.dart';
import 'package:auth/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:sailor/sailor.dart';

import 'injection.dart';

class Routes {
  static void createRoutes() {
    final sailor = sl<Sailor>();
    sailor.addRoutes(
      [
        SailorRoute(
          name: SignInPage.routeName,
          builder: (context, _, args) => SignInProvider(),
        ),
        SailorRoute(
          name: SignUpPage.routeName,
          builder: (context, _, args) => SignUpProvider(),
        ),
      ],
    );
  }
}
