
import 'package:fluro/fluro.dart';
import 'package:flutter_module/routers/i_router.dart';
import 'package:flutter_module/home/home_page.dart';



class HomeRouter implements IRouterProvider{

  static String homePage = '/home';
  
  @override
  void initRouter(FluroRouter router) {
    router.define(homePage, handler: Handler(handlerFunc: (_, __) => Home()));
  }
  
}