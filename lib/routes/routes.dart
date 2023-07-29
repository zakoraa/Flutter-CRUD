import 'package:tahap1_crud/module/home/view/home_view.dart';
import 'package:tahap1_crud/routes/route_name.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(name: RouteName.homePage, page: () => HomeView()),
  ];
}
