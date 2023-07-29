import 'package:tahap1_crud/module/home/view/home_view.dart';
import 'package:tahap1_crud/routes/route_name.dart';
import 'package:get/get.dart';

import '../module/addUserView/view/add_user_view.dart';

class AppPage {
  static final pages = [
    GetPage(name: RouteName.homeView, page: () => HomeView(), transition: Transition.leftToRight),
    GetPage(name: RouteName.addUserView, page: () => AddUserView(), transition: Transition.rightToLeft),
  ];
}
