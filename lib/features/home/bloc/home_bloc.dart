import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_practice/data/cart_items.dart';
import 'package:bloc_practice/data/grocery_data.dart';
import 'package:bloc_practice/data/wishlist_items.dart';
import 'package:bloc_practice/features/home/models/home_product_model.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeIntialEvent>(homeIntialEvent);
    on<HomeWishListClickedEvent>(homeWishListClickedEvent);
    on<HomeCartClickedEvent>(homeCartClickedEvent);
    on<HomeWishlistNavigationButtonEvent>(homeWishlistNavigationButtonEvent);
    on<HomeCartNavigationButtonEvent>(homeCartNavigationButtonEvent);
  }
}

FutureOr<void> homeIntialEvent(
    HomeIntialEvent event, Emitter<HomeState> emit) async {
  emit(HomeLoadingState());
  await Future.delayed(
    const Duration(seconds: 2),
  );
  emit(
    HomeLoadedSuccessState(
      products: GroceryData.groceryProducts
          .map(
            (e) => ProductModel(
              id: e['id'],
              name: e['name'],
              description: e['description'],
              price: e['price'],
              imageURL: e['imageUrl'],
            ),
          )
          .toList(),
    ),
  );
}

FutureOr<void> homeWishListClickedEvent(
    HomeWishListClickedEvent event, Emitter<HomeState> emit) {
  print('wishlist product clicked');
  wishlistItems.add(event.clickedProduct);
}

FutureOr<void> homeCartClickedEvent(
    HomeCartClickedEvent event, Emitter<HomeState> emit) {
  cartItems.add(event.clickedProduct);
  print('cart product clicked');
}

FutureOr<void> homeWishlistNavigationButtonEvent(
    HomeWishlistNavigationButtonEvent event, Emitter<HomeState> emit) {
  print('wishlist navigation clicked');
  emit(HomeNavigateToWishlistScreenActionState());
}

FutureOr<void> homeCartNavigationButtonEvent(
    HomeCartNavigationButtonEvent event, Emitter<HomeState> emit) {
  print('cart navigation clicked');
  emit(HomeNavigateCartScreenActionState());
}
