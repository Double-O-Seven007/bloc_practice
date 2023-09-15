import 'package:bloc_practice/features/cart/ui/cart_screen.dart';
import 'package:bloc_practice/features/home/ui/home_screen.dart';
import 'package:bloc_practice/features/wishlist/ui/wishlist_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const home = '/';
  static const wishlist = '/wishlist';
  static const cart = '/cart';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case wishlist:
        return MaterialPageRoute(
          builder: (context) => const WishlistScreen(),
        );
      case cart:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
    }
    throw 'There is something wrong with the route setiings';
  }
}
